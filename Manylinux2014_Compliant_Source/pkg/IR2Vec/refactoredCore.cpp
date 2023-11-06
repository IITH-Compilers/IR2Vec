// Copyright(c) 2023, The Contributors of IR2Vec.
//
// Part of the IR2Vec project.This software is available under the BSD 4-Clause
// License. Please see LICENSE file in the top - level directory for more
// details.
//

#define PY_SSIZE_T_CLEAN
#include "CollectIR.h"
#include "FlowAware.h"
#include "IR2Vec.h"
#include "Symbolic.h"
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

// #include "_dl_x86_cpu_features.c"

// #include "boost/python.hpp"

// utils.h is included because it provides with a function for conversion
using namespace std;

int no_name_inst_count = 0;
string seed_emb_path = "";
// need to wrap :-
// generateEncodings()
// getInstVecMap()
// getFunctionVecMap()
// getFunctionVecMap()

// need to undesratnd argument semantics of generateEncodings() --->
// LLVM::Module &M
// IR2VecMode mode = can be symbolic[sym] or flowaware[fa]
// vocab = path to seed emebedings
// o= output file that will either be created or appended and contain
// real-valued vectors representing embeddings level= can be either program
// level[p] or function level[f] class = One and only Non mandatory Argument ;
//  static PyObject* set_global_list_return_message(bp::list& l, string msg)
//  {
// l[1]=msg;
// cout<<"fail1"<<endl;
// //static PyObject* pp=(PyObject*)&l;
// cout<<"fail2"<<endl;
// return l.ptr();
//  }

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

// Function to get Program Vector List
PyObject *createProgramVectorList(llvm::SmallVector<double, DIM> llvm_pgm_vec) {
    // for PgmVector
    PyObject *PgmList = PyList_New(0);
    for (auto &Pgm_it : llvm_pgm_vec)
        PyList_Append(PgmList, PyFloat_FromDouble(Pgm_it));
    return PgmList;
}

// Function to get Function Vector Dictionary
PyObject *createFunctionVectorDict(
    llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16>
        llvm_func_vec_map) {
    map<string, vector<double>> FuncVecMap;

    PyObject *FuncVecDict = PyDict_New();

    // for FuncVecMap
    for (auto Func_it : llvm_func_vec_map) {
        PyObject *temp3 = PyList_New(0);
        string demangledName = IR2Vec::getDemagledName(Func_it.first);
        for (auto &Vec_it : Func_it.second){
            PyList_Append(temp3, PyFloat_FromDouble(Vec_it));
        }
        PyDict_SetDefault(FuncVecDict,
                          PyUnicode_FromString(demangledName.c_str()),
                          Py_None);
        PyDict_SetItemString(FuncVecDict, demangledName.c_str(), temp3);

    }
    return FuncVecDict;
}

// Function to get Instruction Vector Dictionary
PyObject *createInstructionVectorDict(
    llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
        llvm_inst_vec_map) {
    PyObject *InstVecDict = PyDict_New();
    for (auto Inst_it : llvm_inst_vec_map) {
        string demangledName = IR2Vec::getDemagledName(Inst_it.first);

        PyObject *temp3 = PyList_New(0);
        // copy this SmallVector into c++ Vector
        for (auto &Vec_it : Inst_it.second) {
           PyList_Append(temp3, PyFloat_FromDouble(Vec_it));
        }
        PyDict_SetDefault(InstVecDict,
                          PyUnicode_FromString((Map_it1.first).c_str()),
                          Py_None);
        PyDict_SetItemString(InstVecDict, Map_it1.first.c_str(), temp3);
    }
    return InstVecDict;
}

PyObject *initEmbedding(PyObject *self, PyObject *args) {
    Py_Initialize();
    const char *filename = "\0";
    const char *mode = "\0";
    std::string vocab_path = seed_emb_path + "/seedEmbeddingVocab-llvm16.txt";
    const char *level =
        "\0"; // remember that ir2vec accepts a char type for this
    const char *output_file = "\0";

    if (PyArg_ParseTuple(args, "sss|s", &filename, &mode, &level,
                         &output_file)) {
        // Sanity Checks
        if (fileNotValid(filename)) {
            PyDict_SetItemString(
                Embedding_dict, "Message",
                PyUnicode_FromString(
                    "Eroneous or empty .bc/.ll file location entred"));
            PyDict_SetItemString(Embedding_dict, "Status", Py_False);
            return Embedding_dict;
        }

        if (string(output_file).empty() == false) {
            if (fileNotValid(output_file)) {
                PyDict_SetItemString(
                    Embedding_dict, "Message",
                    PyUnicode_FromString(
                        "Eroneous or empty output file location entred"));
                PyDict_SetItemString(Embedding_dict, "Status", Py_False);
                return Embedding_dict;
            }
        }

        if (string(mode) != string("sym") && string(mode) != string("fa")) {
            PyDict_SetItemString(
                Embedding_dict, "Message",
                PyUnicode_FromString("Eroneous mode entered . Either of sym, "
                                     "fa should be specified"));
            PyDict_SetItemString(Embedding_dict, "Status", Py_False);
            return Embedding_dict;
        } else {
            if (level[0] != 'p' && level[0] != 'f') {
                PyDict_SetItemString(
                    Embedding_dict, "Message",
                    PyUnicode_FromString(
                        "Invalid level specified: Use either p or f"));
                PyDict_SetItemString(Embedding_dict, "Status", Py_False);
                return Embedding_dict;
            }
        }

        // Invokinng IR2Vec lib exposed functions
        IR2Vec::iname = string(filename);
        IR2Vec::IR2VecMode ir2vecMode =
            (string(mode) == string("sym") ? IR2Vec::Symbolic
                                           : IR2Vec::FlowAware);

        // Temporary LLVM ADT's need to hold returned ADt's by IR2vec lib
        llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
            llvm_inst_vec_map; // IR2Vec::Embeddings::obj.getInstVecMap();
        llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16>
            llvm_func_vec_map; // IR2Vec::Embeddings::obj.getFunctionVecMap();
        llvm::SmallVector<double, DIM>
            llvm_pgm_vec; // IR2Vec::Embeddings::obj.getProgramVector();

        // The scope of this Module object is extremely crucial
        std::unique_ptr<llvm::Module> Module;
        Module = IR2Vec::getLLVMIR();

        // if output file is provided
        if (string(output_file) != "") {
            string outFile = string(output_file);
            ofstream o;
            o.open(outFile, ios_base::app);
            IR2Vec::Embeddings Emb(*Module, ir2vecMode, vocab_path, level[0],
                                   &o);

            // Emb is genertaed and intialized
            llvm_inst_vec_map = Emb.getInstVecMap();
            llvm_func_vec_map = Emb.getFunctionVecMap();
            llvm_pgm_vec = Emb.getProgramVector();
            
            // return Emb object in Emb
            return PyObj_FromPtr(&Emb);
        } else {
            IR2Vec::Embeddings Emb(*Module, ir2vecMode, vocab_path, level[0],
                                   nullptr);
            llvm_inst_vec_map = Emb.getInstVecMap();
            llvm_func_vec_map = Emb.getFunctionVecMap();
            llvm_pgm_vec = Emb.getProgramVector();

            // return Emb object in Emb
            return PyObj_FromPtr(&Emb);
        }
    } else {
        return PyUnicode_FromString("Error in parsing arguments.");
    }
}

/*
    Create the following functions

    0. initEncodings()
    1. getInstVecMap()
    2. getFunctionVecMap()
    3. getProgramVector()
    4. getIR2VecVersion()
    5. setSeedEmbdPath()
*/

PyObject* getInstVecMap(PyObject* self, PyObject* embedding_dict) {
    PyObject* InstVecDict = PyDict_GetItemString(embedding_dict, "Instruction_Dict");
    return InstVecDict;
}

PyObject* getFunctionVecMap(PyObject* self, PyObject* embedding_dict) {
    PyObject* FuncVecDict = PyDict_GetItemString(embedding_dict, "Function_Dict");
    return FuncVecDict;
}

PyObject* getProgramVector(PyObject* self, PyObject* embedding_dict) {
    PyObject* PgmList = PyDict_GetItemString(embedding_dict, "Program_List");
    return PgmList;
}

PyMethodDef IR2Vec_core_Methods[] = {
    {
        "initEmbedding", (PyCFunction)initEmbedding, METH_VARARGS,
        "As specified"
    },
    {
        "getInstVecMap", (PyCFunction)getInstVecMap, METH_O,
        "As specified"
    },
    {
        "getFunctionVecMap", (PyCFunction)getFunctionVecMap, METH_O,
        "As specified"
    },
    {
        "getProgramVector", (PyCFunction)getProgramVector, METH_O,
        "As specified"
    },
    {
        "setSeedEmbdPath", (PyCFunction)setSeedEmbeddingPath, METH_VARARGS,
        "As specified"
    },
    {
        "getVersion", getIR2VecVersion, METH_VARARGS,
        "Get IR2Vec Version"
    },
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
    IR2Vec_core_Methods
};
PyMODINIT_FUNC PyInit_core(void) { return PyModule_Create(&IR2Vec_def); }
