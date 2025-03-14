// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
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

class IR2VecHandler {
private:
  std::string fileName;
  std::string outputFile;
  std::string mode;
  std::string level;
  unsigned dim;

public:
  IR2VecHandler(std::string fileName, std::string outputFile, std::string mode,
                std::string level, unsigned dim)
      : fileName(fileName), outputFile(outputFile), mode(mode), level(level),
        dim(dim) {}

  std::string getFile() { return fileName; }
  std::string getOutputFile() { return outputFile; }
  std::string getMode() { return mode; }
  std::string getLevel() { return level; }

  std::string getActualName(const llvm::Function *function) {
    std::string functionName = function->getName().str();
    std::string demangledName = IR2Vec::getDemagledName(function);
    size_t Size = 1;
    char *Buf = static_cast<char *>(std::malloc(Size));
    const char *mangled = functionName.c_str();
    char *baseName;
    llvm::ItaniumPartialDemangler Mangler;
    if (Mangler.partialDemangle(mangled)) {
      baseName = &demangledName[0];
    } else {
      baseName = Mangler.getFunctionBaseName(Buf, &Size);
    }
    return std::string(baseName);
  }

  // Function to get Program Vector List
  PyObject *createProgramVectorList(IR2Vec::Vector llvmPgmVec) {
    // for PgmVector
    PyObject *PgmList = PyList_New(0);
    for (auto &Pgm_it : llvmPgmVec)
      PyList_Append(PgmList, PyFloat_FromDouble(Pgm_it));
    return PgmList;
  }

  // Function to get Function Vector Dictionary
  PyObject *createFunctionVectorDict(
      std::string baseFuncName,
      llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16>
          funcMap) {
    PyObject *FuncVecDict = PyDict_New();
    if (!FuncVecDict) {
      PyErr_SetString(PyExc_TypeError, "Error in creating FuncVec dictionary");
      return NULL;
    }

    if (funcMap.empty()) {
      PySys_FormatStdout(
          ("Empty function vector map for function " + baseFuncName).c_str());
      PyErr_SetString(PyExc_TypeError, "Empty function vector map");
      return NULL;
    }

    for (auto &Func_it : funcMap) {
      const llvm::Function *func = Func_it.first;
      PyObject *functionVector = PyList_New(0);
      for (auto &Vec_it : Func_it.second) {
        PyList_Append(functionVector, PyFloat_FromDouble(Vec_it));
      }
      Py_INCREF(functionVector);

      if (PyList_Size(functionVector) != Func_it.second.size()) {
        PyErr_SetString(PyExc_TypeError, "Error in creating Function Vector");
        return NULL;
      }

      // PyObject *funcDict = PyDict_New();
      // if (!funcDict) {
      //   PyErr_SetString(PyExc_TypeError, "Error in creating dictionary");
      //   return NULL;
      // }

      std::string demangledName = IR2Vec::getDemagledName(func);
      PyObject *demangledNameObj = PyUnicode_FromString(demangledName.c_str());
      Py_INCREF(demangledNameObj);
      if (!demangledNameObj) {
        PyErr_SetString(PyExc_TypeError,
                        "Failed to create Python string from demangledName");
        return NULL;
      }

      string actualName = getActualName(func);
      PyObject *actualNameObj = PyUnicode_FromString(actualName.c_str());
      Py_INCREF(actualNameObj);
      if (!actualNameObj) {
        PyErr_SetString(PyExc_TypeError,
                        "Failed to create Python string from demangledName");
        return NULL;
      }

      // PySys_FormatStdout(
      //     ("Function name demangled " + demangledName + " actual " +
      //     actualName)
      //         .c_str());

      // if (PyDict_SetItemString(funcDict, "demangledName", demangedNameObj) !=
      //     0) {
      //   PyErr_SetString(PyExc_TypeError, "Error in setting demangledName");
      //   return NULL;
      // }

      // if (PyDict_SetItemString(funcDict, "actualName", actualNameObj) != 0) {
      //   PyErr_SetString(PyExc_TypeError, "Error in setting actualName");
      //   return NULL;
      // }

      // if (PyDict_SetItemString(funcDict, "vector", functionVector) != 0) {
      //   PyErr_SetString(PyExc_TypeError, "Error in setting vector");
      //   return NULL;
      // }
      // Py_INCREF(funcDict);

      PyObject *funcTup = PyTuple_New(3);
      PyTuple_SET_ITEM(funcTup, 0, demangledNameObj);
      PyTuple_SET_ITEM(funcTup, 1, actualNameObj);
      PyTuple_SET_ITEM(funcTup, 2, functionVector);
      Py_INCREF(funcTup);

      if (PyDict_SetItemString(FuncVecDict, demangledName.c_str(), funcTup) !=
          0) {
        PyErr_SetString(PyExc_TypeError, "Error in setting dictionary");
        return NULL;
      }
    }

    return FuncVecDict;
    // PyObject *testFuncDict = PyDict_New();
    // return testFuncDict;
  }

  // Function to get Instruction Vector Dictionary
  PyObject *createInstructionVectorList(
      llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
          llvmInstVecMap) {
    PyObject *instructionVectorList = PyList_New(0);
    for (auto &Inst_it : llvmInstVecMap) {
      PyObject *instructionVector = PyList_New(0);
      for (auto &Vec_it : Inst_it.second) {
        PyList_Append(instructionVector, PyFloat_FromDouble(Vec_it));
      }

      // add InstVec to instructionVector
      PyList_Append(instructionVectorList, instructionVector);
    }
    return instructionVectorList;
  }

  // setEncodings
  PyObject *setEncodings(OpType type, std::string funcName = "") {
    // Invokinng IR2Vec lib exposed functions
    IR2Vec::iname = this->fileName;
    IR2Vec::IR2VecMode ir2vecMode =
        (this->mode == string("sym") ? IR2Vec::Symbolic : IR2Vec::FlowAware);
    // The scope of this Module object is extremely crucial
    std::unique_ptr<llvm::Module> Module;
    Module = IR2Vec::getLLVMIR();
    if (!Module) {
      PyErr_SetString(PyExc_TypeError, "Module not created");
      return NULL;
    }

    IR2Vec::Embeddings *emb = nullptr;
    // if output file is provided
    if (!(this->outputFile.empty())) {
      std::ofstream output(this->outputFile, ios_base::app);
      emb = new IR2Vec::Embeddings(*Module, ir2vecMode, (this->level)[0],
                                   &output, this->dim, funcName);
    } else {
      emb = new IR2Vec::Embeddings(*Module, ir2vecMode, (this->level)[0],
                                   nullptr, this->dim, funcName);
    }

    if (!emb) {
      PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
      return NULL;
    }

    PyObject *result = NULL;

    switch (type) {
    case OpType::Program:
      result = this->createProgramVectorList(emb->getProgramVector());
      break;
    case OpType::Function: {
      // result = this->createFunctionVectorDict(emb->getFunctionVecMap());
      llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16> funcMap =
          emb->getFunctionVecMap();
      result = this->createFunctionVectorDict(funcName, funcMap);
      // result = this->createProgramVectorList(emb->getProgramVector());
      break;
    }
    case OpType::Instruction:
      result = this->createInstructionVectorList(emb->getInstVecMap());
      break;
    default:
      PyErr_SetString(PyExc_TypeError, "Invalid OpType");
      result = NULL;
    }

    delete emb;
    if (!result) {
      PyErr_SetString(PyExc_TypeError,
                      "Error in creating Final Result Encodings");
      return NULL;
    }

    return result;
  }
};

typedef struct {
  PyObject_VAR_HEAD IR2VecHandler *ir2vecObj;
} IR2VecHandlerObject;

PyObject *getInstructionVectors(IR2VecHandlerObject *self, PyObject *args) {
  // check for args, and null etc
  if (!(self->ir2vecObj)) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    return NULL;
  }
  return (self->ir2vecObj)->setEncodings(OpType::Instruction);
}

PyObject *getProgramVector(IR2VecHandlerObject *self, PyObject *args) {
  if (!(self->ir2vecObj)) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    return NULL;
  }
  return (self->ir2vecObj)->setEncodings(OpType::Program);
}

PyObject *getFunctionVectors(IR2VecHandlerObject *self, PyObject *args) {
  if (!args || !PyTuple_Check(args)) {
    PyErr_SetString(PyExc_TypeError, "Invalid arguments. Expected a tuple.");
    return NULL;
  }

  if (!(self->ir2vecObj)) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    return NULL;
  }

  const char *funcName = nullptr;
  if (!PyArg_ParseTuple(args, "|s", &funcName)) {
    PyErr_SetString(PyExc_TypeError, "Tuple not parsed properly");
    return NULL;
  }

  string functionName = funcName ? string(funcName) : string();
  // PySys_FormatStdout(("Function name is " + functionName).c_str());

  PyObject *result =
      (self->ir2vecObj)->setEncodings(OpType::Function, functionName);
  return result;
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

static PyTypeObject IR2VecHandlerType = {
    PyVarObject_HEAD_INIT(NULL, 0).tp_name =
        "IR2VecHandler.IR2VecHandlerObject",
    .tp_basicsize = sizeof(IR2VecHandlerObject),
    .tp_flags = Py_TPFLAGS_DEFAULT | Py_TPFLAGS_BASETYPE,
    .tp_doc = "IR2VecHandlerObject", .tp_methods = ir2vecObjMethods};

PyObject *runEncodings(PyObject *args, OpType type) {
  char *funcName = nullptr;
  IR2VecHandlerObject *ir2vecHandlerobj = nullptr;

  if (!PyArg_ParseTuple(args, "O|s", &ir2vecHandlerobj, &funcName)) {
    PyErr_SetString(PyExc_TypeError, "Invalid argument provided. Expected an "
                                     "object and an optional string.");
    return NULL;
  }

  if (!ir2vecHandlerobj ||
      !PyObject_TypeCheck((PyObject *)ir2vecHandlerobj, &IR2VecHandlerType)) {
    PyErr_SetString(PyExc_TypeError, "Invalid IR2VecHandlerObject provided.");
    return NULL;
  }

  string functionName = funcName ? string(funcName) : string();
  // if (type == OpType::Function)
  //   PySys_FormatStdout(("Function name is " + functionName).c_str());

  if (functionName.empty() == false && type != OpType::Function) {
    PyErr_SetString(PyExc_TypeError,
                    "Function name can only be specified for Function "
                    "Vectors");
    return NULL;
  }

  if (!ir2vecHandlerobj) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    return NULL;
  }

  if (!(ir2vecHandlerobj->ir2vecObj)) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    return NULL;
  }

  IR2VecHandler *ir2vecObj = ir2vecHandlerobj->ir2vecObj;

  PyObject *result = ir2vecObj->setEncodings(type, functionName);
  return result;
}

PyObject *getInstructionVectors(PyObject *self, PyObject *args) {
  if (!args || !PyTuple_Check(args)) {
    PyErr_SetString(PyExc_TypeError, "Invalid arguments. Expected a tuple.");
    return NULL;
  }
  return runEncodings(args, OpType::Instruction);
}

PyObject *getProgramVector(PyObject *self, PyObject *args) {
  if (!args || !PyTuple_Check(args)) {
    PyErr_SetString(PyExc_TypeError, "Invalid arguments. Expected a tuple.");
    return NULL;
  }

  return runEncodings(args, OpType::Program);
}

PyObject *getFunctionVectors(PyObject *self, PyObject *args) {
  if (!args || !PyTuple_Check(args)) {
    PyErr_SetString(PyExc_TypeError, "Invalid arguments. Expected a tuple.");
    return NULL;
  }

  return runEncodings(args, OpType::Function);
}

IR2VecHandlerObject *createIR2VECObject(const char *filename,
                                        const char *output_file,
                                        const char *mode, const char *level,
                                        unsigned dim) {
  IR2VecHandler *ir2vecObj =
      new IR2VecHandler(filename, output_file, mode, level, dim);
  if (!ir2vecObj) {
    return nullptr;
  }
  IR2VecHandlerObject *ir2vecHandlerObj =
      PyObject_New(IR2VecHandlerObject, &IR2VecHandlerType);
  if (!ir2vecHandlerObj) {
    return nullptr;
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
  unsigned dim = 300;

  if (!PyArg_ParseTuple(args, "sss|Is", &filename, &mode, &level, &dim,
                        &output_file)) {
    // raise error here
    PyErr_SetString(PyExc_TypeError, "Invalid Arguments");
    Py_RETURN_NONE;
  }

  if (fileNotValid(filename)) {
    PyErr_SetString(PyExc_TypeError, "Invalid File Path");
    Py_RETURN_NONE;
  }

  if (string(output_file).empty() == false) {
    if (fileNotValid(output_file)) {
      PyErr_SetString(PyExc_TypeError, "Invalid Output File Path");
      Py_RETURN_NONE;
    }
  }

  if (string(mode) != string("sym") && string(mode) != string("fa")) {
    PyErr_SetString(PyExc_TypeError,
                    "Eroneous mode entered . Either of sym, fa should be "
                    "specified");
    Py_RETURN_NONE;
  }

  if (level[0] != 'p' && level[0] != 'f') {
    PyErr_SetString(PyExc_TypeError,
                    "Invalid level specified: Use either p or f");
    Py_RETURN_NONE;
  }

  IR2VecHandlerObject *ir2vecObj =
      createIR2VECObject(filename, output_file, mode, level, dim);

  if (!ir2vecObj) {
    PyErr_SetString(PyExc_TypeError, "Embedding Object not created");
    Py_RETURN_NONE;
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
  PyObject *modObj = PyModule_Create(&IR2Vec_def);

  if (PyType_Ready(&IR2VecHandlerType) < 0) {
    PyErr_SetString(PyExc_TypeError, "Error in type creation");
    return NULL;
  }

  Py_INCREF(&IR2VecHandlerType);

  // Add the IR2VecHandlerType to the module
  if (PyModule_AddObject(modObj, "IR2VecHandler",
                         (PyObject *)&IR2VecHandlerType) < 0) {
    // Py_DECREF(&IR2VecHandlerType);
    // Py_DECREF(modObj);
    return NULL;
  }

  return modObj;
}
