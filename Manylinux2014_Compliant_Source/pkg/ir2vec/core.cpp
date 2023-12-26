// Copyright(c) 2023, The Contributors of IR2Vec.
//
// Part of the IR2Vec project.This software is available under the BSD 4-Clause
// License. Please see LICENSE file in the top - level directory for more
// details.
//

#define PY_SSIZE_T_CLEAN
#include "IR2Vec.h"
#include "utils.h"
#include "version.h"

#include <Python.h>
#include <cstring>
#include <fstream>
#include <iostream>
#include <map>
#include <string>
#include <vector>

#include "llvm/ADT/APSInt.h"
#include "llvm/ADT/ArrayRef.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/MapVector.h"
#include "llvm/ADT/SmallSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/StringExtras.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Value.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/DataTypes.h"
#include "llvm/Support/Endian.h"
#include "llvm/Support/JSON.h"
#include "llvm/Support/ScopedPrinter.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include <cxxabi.h>

using namespace std;

string seed_emb_path = "";

static PyObject *getIR2VecVersion(PyObject *self, PyObject *args) {
  return PyUnicode_DecodeUTF8(
      IR2VEC_VERSION, sizeof(IR2VEC_VERSION) / sizeof(IR2VEC_VERSION[0]) - 1,
      NULL);
}

PyObject *setSeedEmbeddingPath(PyObject *self, PyObject *args) {
  const char *vocab_path2 = "";
  if (PyArg_ParseTuple(args, "s", &vocab_path2)) {
    seed_emb_path = string(vocab_path2);
  }
  return PyUnicode_FromString("Seed Embedding Path is Set");
}

bool fileNotValid(const char *filename) {
  ifstream temp;
  temp.open(filename, ios_base::in);
  if (temp.peek() == ifstream::traits_type::eof() || temp.bad() == true ||
      temp.fail() == true) {
    return true;
  }
  temp.close();
  return false;
}

// create Enum with three options : Program, Function, Instruction
enum class OpType { Program, Function, Instruction };

class ir2vecHandler {
private:
  std::string fileName;
  std::string outputFile;
  std::string mode;
  std::string level;

public:
  ir2vecHandler(std::string fileName, std::string outputFile, std::string mode,
                std::string level)
      : fileName(fileName), outputFile(outputFile), mode(mode), level(level) {}

  std::string getFile() { return fileName; }
  std::string getOutputFile() { return outputFile; }
  std::string getMode() { return mode; }
  std::string getLevel() { return level; }

  // Function to get Program Vector List
  PyObject *createProgramVectorList(llvm::SmallVector<double, DIM> llvmPgmVec) {
    // for PgmVector
    PyObject *PgmList = PyList_New(0);
    for (auto &Pgm_it : llvmPgmVec)
      PyList_Append(PgmList, PyFloat_FromDouble(Pgm_it));
    return PgmList;
  }

  // Function to get Function Vector Dictionary
  PyObject *createFunctionVectorDict(
      llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16>
          funcMap) {
    PyObject *FuncVecDict = PyDict_New();

    for (auto &Func_it : funcMap) {
      const llvm::Function *func = Func_it.first;
      std::string demangledName = IR2Vec::getDemagledName(func);
      std::string actualName =
          IR2Vec::getActualName(const_cast<llvm::Function *>(func));

      PyObject *functionVector = PyList_New(0);
      for (auto &Vec_it : Func_it.second) {
        PyList_Append(functionVector, PyFloat_FromDouble(Vec_it));
      }

      PyObject *funcDict = PyDict_New();
      PyDict_SetDefault(funcDict, PyUnicode_FromString("demangledName"),
                        Py_None);
      PyDict_SetDefault(funcDict, PyUnicode_FromString("actualName"), Py_None);
      PyDict_SetDefault(funcDict, PyUnicode_FromString("vector"), Py_None);

      PyDict_SetItemString(funcDict, "demangledName",
                           PyUnicode_FromString(demangledName.c_str()));
      PyDict_SetItemString(funcDict, "actualName",
                           PyUnicode_FromString(actualName.c_str()));
      PyDict_SetItemString(funcDict, "vector", functionVector);

      PyDict_SetItemString(FuncVecDict, demangledName.c_str(), funcDict);

      Py_DECREF(funcDict);
    }
    return FuncVecDict;
  }

  // Function to get Instruction Vector Dictionary
  PyObject *createInstructionVectorDict(
      llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
          llvmInstVecMap) {
    PyObject *InstVecDict = PyDict_New();

    for (auto &Inst_it : llvmInstVecMap) {
      std::string demangledName = IR2Vec::getDemagledName(Inst_it.first);

      PyObject *instructionVector = PyList_New(0);
      // copy this SmallVector into c++ Vector
      for (auto &Vec_it : Inst_it.second) {
        PyList_Append(instructionVector, PyFloat_FromDouble(Vec_it));
      }
      PyDict_SetDefault(InstVecDict,
                        PyUnicode_FromString(demangledName.c_str()), Py_None);
      PyDict_SetItemString(InstVecDict, demangledName.c_str(),
                           instructionVector);
    }
    return InstVecDict;
  }

  // generateEncodings
  PyObject *generateEncodings(OpType type, std::string funcName = "") {
    // Invokinng IR2Vec lib exposed functions
    IR2Vec::iname = this->fileName;
    IR2Vec::IR2VecMode ir2vecMode =
        (this->mode == string("sym") ? IR2Vec::Symbolic : IR2Vec::FlowAware);
    // The scope of this Module object is extremely crucial
    std::unique_ptr<llvm::Module> Module;
    Module = IR2Vec::getLLVMIR();
    std::string vocab_path = seed_emb_path + "/seedEmbeddingVocab.txt";

    IR2Vec::Embeddings *emb = new IR2Vec::Embeddings();
    // if output file is provided
    if (this->outputFile != "") {
      string outFile = this->outputFile;
      ofstream output;
      output.open(outFile, ios_base::app);
      emb = std::move(new IR2Vec::Embeddings(*Module, ir2vecMode, vocab_path,
                                             (this->level)[0], &output,
                                             funcName));
    } else {
      emb = std::move(new IR2Vec::Embeddings(*Module, ir2vecMode, vocab_path,
                                             (this->level)[0], nullptr,
                                             funcName));
    }

    if (emb == nullptr) {
      PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
      Py_RETURN_NONE;
    }

    if (type == OpType::Program) {
      llvm::SmallVector<double, DIM> progVector = emb->getProgramVector();
      return this->createProgramVectorList(progVector);
    } else if (type == OpType::Function) {
      llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16>
          funcVecMap = emb->getFunctionVecMap();
      return this->createFunctionVectorDict(funcVecMap);
    } else if (type == OpType::Instruction) {
      llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
          instVecMap = emb->getInstVecMap();
      return this->createInstructionVectorDict(instVecMap);
    } else {
      PyErr_SetString(PyExc_TypeError, "Invalid OpType");
      Py_RETURN_NONE;
    }
  }
};

typedef struct {
  PyObject_VAR_HEAD ir2vecHandler *ir2vecObj;
} ir2vecHandlerObject;

PyObject *getInstructionVectors(ir2vecHandlerObject *self, PyObject *args) {
  // check for args, and null etc
  if ((self->ir2vecObj) == NULL) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    return NULL;
  }
  return (self->ir2vecObj)->generateEncodings(OpType::Instruction);
}

PyObject *getProgramVector(ir2vecHandlerObject *self, PyObject *args) {
  if ((self->ir2vecObj) == NULL) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    return NULL;
  }
  return (self->ir2vecObj)->generateEncodings(OpType::Program);
}

PyObject *getFunctionVectors(ir2vecHandlerObject *self, PyObject *args) {
  if ((self->ir2vecObj) == NULL) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    return NULL;
  }

  const char *funcName = "\0";
  if (!PyArg_ParseTuple(args, "|s", &funcName)) {
    return NULL;
  }

  return (self->ir2vecObj)
      ->generateEncodings(OpType::Function, string(funcName));
}

PyMethodDef ir2vecObjMethods[] = {
    {"getInstructionVectors", (PyCFunction)getInstructionVectors, METH_VARARGS,
     "Get Instruction Vectors"},
    {"getProgramVector", (PyCFunction)getProgramVector, METH_VARARGS,
     "Get Program Vector"},
    {"getFunctionVectors", (PyCFunction)getFunctionVectors, METH_VARARGS,
     "Get Function Vectors"},
    {NULL, NULL, 0, NULL} /* Sentinel */
};

static PyTypeObject ir2vecHandlerType = {
    PyVarObject_HEAD_INIT(NULL, 0).tp_name =
        "ir2vecHandler.ir2vecHandlerObject",
    .tp_basicsize = sizeof(ir2vecHandlerObject),
    .tp_flags = Py_TPFLAGS_DEFAULT,
    .tp_doc = "ir2vecHandlerObject",
    .tp_methods = ir2vecObjMethods,
};

PyObject *runEncodings(PyObject *args, OpType type) {
  const char *funcName = "\0";
  ir2vecHandlerObject *ir2vecHandlerobj = NULL;

  if (!PyArg_ParseTuple(args, "O|s", &ir2vecHandlerobj, &funcName)) {
    return NULL;
  }

  if (string(funcName).empty() == false && type != OpType::Function) {
    PyErr_SetString(PyExc_TypeError,
                    "Function name can only be specified for Function "
                    "Vectors");
    return NULL;
  }

  if (ir2vecHandlerobj == NULL) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    return NULL;
  }

  if (ir2vecHandlerobj->ir2vecObj == NULL) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    return NULL;
  } else {
    ir2vecHandler *ir2vecObj = ir2vecHandlerobj->ir2vecObj;
    return ir2vecObj->generateEncodings(type, string(funcName));
  }
}

PyObject *getInstructionVectors(PyObject *self, PyObject *args) {
  return runEncodings(args, OpType::Instruction);
}

PyObject *getProgramVector(PyObject *self, PyObject *args) {
  return runEncodings(args, OpType::Program);
}

PyObject *getFunctionVectors(PyObject *self, PyObject *args) {
  return runEncodings(args, OpType::Function);
}

ir2vecHandlerObject *createIR2VECObject(const char *filename,
                                        const char *output_file,
                                        const char *mode, const char *level) {
  ir2vecHandler *ir2vecObj =
      new ir2vecHandler(filename, output_file, mode, level);
  if (ir2vecObj == NULL) {
    return NULL;
  }
  ir2vecHandlerObject *ir2vecHandlerObj =
      PyObject_New(ir2vecHandlerObject, &ir2vecHandlerType);
  if (ir2vecHandlerObj == NULL) {
    return NULL;
  }
  ir2vecHandlerObj->ir2vecObj = ir2vecObj;
  return ir2vecHandlerObj;
}

PyObject *initEmbedding(PyObject *self, PyObject *args) {
  Py_Initialize();
  const char *filename = "\0";
  const char *mode = "\0";
  const char *level = "\0";
  const char *output_file = "\0";

  if (!PyArg_ParseTuple(args, "sss|s", &filename, &mode, &level,
                        &output_file)) {
    // raise error here
    PyErr_SetString(PyExc_TypeError, "Invalid Arguments");
    return NULL;
  }

  if (fileNotValid(filename)) {
    PyErr_SetString(PyExc_TypeError, "Invalid File Path");
    return NULL;
  }

  if (string(output_file).empty() == false) {
    if (fileNotValid(output_file)) {
      PyErr_SetString(PyExc_TypeError, "Invalid Output File Path");
      return NULL;
    }
  }

  if (string(mode) != string("sym") && string(mode) != string("fa")) {
    PyErr_SetString(PyExc_TypeError,
                    "Eroneous mode entered . Either of sym, fa should be "
                    "specified");
    return NULL;
  }

  if (level[0] != 'p' && level[0] != 'f') {
    PyErr_SetString(PyExc_TypeError,
                    "Invalid level specified: Use either p or f");
    return NULL;
  }

  ir2vecHandlerObject *ir2vecObj =
      createIR2VECObject(filename, output_file, mode, level);

  if (ir2vecObj == NULL) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    return NULL;
  }

  return (PyObject *)ir2vecObj;
}

PyMethodDef IR2Vec_core_Methods[] = {
    {"initEmbedding", (PyCFunction)initEmbedding, METH_VARARGS,
     "Create an Embedding Object"},
    {"getInstructionVectors", (PyCFunction)getInstructionVectors, METH_VARARGS,
     "Get Instruction Vectors"},
    {"getProgramVector", (PyCFunction)getProgramVector, METH_VARARGS,
     "Get Program Vector"},
    {"getFunctionVectors", (PyCFunction)getFunctionVectors, METH_VARARGS,
     "Get Function Vectors"},
    {"setSeedEmbdPath", (PyCFunction)setSeedEmbeddingPath, METH_VARARGS,
     "Set Seed Embedding Path"},
    {"getVersion", getIR2VecVersion, METH_VARARGS, "Get IR2Vec Version"},
    {NULL, NULL, 0, NULL} /* Sentinel */
};

struct PyModuleDef IR2Vec_def = {
    PyModuleDef_HEAD_INIT,
    "IR2Vec.core", /* name of module NOT THE NAME OF PACKAGE*/
    "take .bc/.ll as input and generates corresponding IR2VEc "
    "Embeddings", /* module documentation, may be NULL */
    -1,           /* size of per-interpreter state of the module,
                                    or -1 if the module keeps state in global variables.
                   */
    IR2Vec_core_Methods};

PyMODINIT_FUNC PyInit_core(void) {
  PyObject *module = PyModule_Create(&IR2Vec_def);

  if (PyType_Ready(&ir2vecHandlerType) < 0) {
    return NULL;
  }

  Py_INCREF(&ir2vecHandlerType);
  return module;
}
