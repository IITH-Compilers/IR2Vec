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
#include "CollectIR.h"
#include "FlowAware.h"
#include "Symbolic.h"

#include <Python.h>
#include <cstring>
#include <fstream>
#include <iostream>
#include <map>
#include <string>
#include <vector>


#include "llvm/IR/Module.h"
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
      	NULL
	);
}

PyObject *set_seed_embedding_path(PyObject *self, PyObject *args) {
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
PyObject* createProgramVectorList(
	llvm::SmallVector<double, DIM> llvm_pgm_vec
) {
	// for PgmVector
	vector<double> PgmVect;
	for (auto &Pgm_it : llvm_pgm_vec)
		PgmVect.push_back(Pgm_it);

	PyObject *PgmList = PyList_New(0);
	for (auto &Vec_it1 : PgmVect)
		PyList_Append(PgmList, PyFloat_FromDouble(Vec_it1));
	return PgmList;
}

// Function to get Function Vector Dictionary
PyObject* createFunctionVectorDict(
	llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16> llvm_func_vec_map
) {
	vector<double> temp2;
	map<string, vector<double>> FuncVecMap;
	string demangledName;
	// for FuncVecMap
	for (auto Func_it : llvm_func_vec_map) {
		for (auto &Vec_it : Func_it.second)
			temp2.push_back(Vec_it);

		demangledName = IR2Vec::getDemagledName(Func_it.first);
		FuncVecMap[demangledName] = temp2;

		temp2.clear();
	}
	
	PyObject *FuncVecDict = PyDict_New();

	// for FuncVecMap
	for (auto Map_it1 : FuncVecMap) {
		PyObject *temp3 = PyList_New(0);
		for (auto &List_it1 : Map_it1.second)
			PyList_Append(temp3, PyFloat_FromDouble(List_it1));
		PyDict_SetDefault(FuncVecDict,
							PyUnicode_FromString((Map_it1.first).c_str()), Py_None);
		PyDict_SetItemString(FuncVecDict, Map_it1.first.c_str(), temp3);
	}
	return FuncVecDict;
}

// Function to get Instruction Vector Dictionary
PyObject* createInstructionVectorDict(
	llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128> llvm_inst_vec_map
) {
	map<string, vector<double>> InstVecMap;
	PyObject *InstVecDict = PyDict_New();

	vector<double> temp2;
	char *readable_name;
	string demangledName;
	size_t sz = 17;
	int status = 0;
	for (auto Inst_it : llvm_inst_vec_map) {
		// copy this SmallVector into c++ Vector
		for (auto &Vec_it : Inst_it.second) {
			// cout<<Vec_it<<endl;
			temp2.push_back(Vec_it);
		}
		auto temp1 = Inst_it.first->getName();
		// cout<<temp1<<endl;
		if (temp1.empty() == false) {
			// apply __cxx::demangle just to be cautious
			auto instName = temp1.str();
			readable_name =
				__cxxabiv1::__cxa_demangle(instName.c_str(), 0, &sz, &status);
			demangledName = status == 0 ? std::string(readable_name) : instName;
			free(readable_name);
			InstVecMap[demangledName] = temp2;
		} else  {
			// if Value does not has a name
			no_name_inst_count++;
			demangledName =
				(((Inst_it.first)->getFunction())->getName().str()) +
				"No_Name_Inst_" +
				to_string(
					no_name_inst_count); // for instructiojn having no string rep ;
										// the custom string rep will be like
										// <function_name_>"No_Name_Inst"_2
			InstVecMap[demangledName] = temp2;
		}
		temp2.clear();
	}

	// for InstVecMap
	for (auto Map_it1 : InstVecMap) {
		PyObject *temp3 = PyList_New(0);
		for (auto &List_it1 : Map_it1.second)
			PyList_Append(temp3, PyFloat_FromDouble(List_it1));
		PyDict_SetDefault(InstVecDict,
							PyUnicode_FromString((Map_it1.first).c_str()), Py_None);
		PyDict_SetItemString(InstVecDict, Map_it1.first.c_str(), temp3);
	}

	return InstVecDict;
}


PyObject *IR2Vec_generateEmbeddings(PyObject *self, PyObject *args) {
	Py_Initialize();
	
	PyObject *Embedding_dict = PyDict_New();

	PyDict_SetDefault(Embedding_dict, PyUnicode_FromString("Instruction_Dict"), Py_None);
	PyDict_SetDefault(Embedding_dict, PyUnicode_FromString("Function_Dict"), Py_None);
	PyDict_SetDefault(Embedding_dict, PyUnicode_FromString("Program_List"), Py_None);
	PyDict_SetDefault(Embedding_dict, PyUnicode_FromString("Message"), PyUnicode_FromString("NA"));
	PyDict_SetDefault(Embedding_dict, PyUnicode_FromString("Status"), Py_False);

	const char *filename = "\0";
	const char *mode = "\0";
	std::string vocab_path = seed_emb_path + "/seedEmbeddingVocab-llvm16.txt";
	const char *level = "\0"; // remember that ir2vec accepts a char type for this
	const char *output_file = "\0";

	if (PyArg_ParseTuple(args, "sss|s", &filename, &mode, &level, &output_file)) {
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
				PyUnicode_FromString(
					"Eroneous mode entered . Either of sym, fa should be specified"));
			PyDict_SetItemString(Embedding_dict, "Status", Py_False);
			return Embedding_dict;
		} else {
			if (level[0] != 'p' && level[0] != 'f') {
				PyDict_SetItemString(
					Embedding_dict, "Message",
					PyUnicode_FromString("Invalid level specified: Use either p or f"));
				PyDict_SetItemString(Embedding_dict, "Status", Py_False);
				return Embedding_dict;
			}
		}

		//Invokinng IR2Vec lib exposed functions
		IR2Vec::iname = string(filename);
		IR2Vec::IR2VecMode ir2vecMode =
			(string(mode) == string("sym") ? IR2Vec::Symbolic : IR2Vec::FlowAware);

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
			o.open(outFile,
					ios_base::app);
			IR2Vec::Embeddings Emb(*Module, ir2vecMode, vocab_path, level[0], &o);

			// Emb is genertaed and intialized
			llvm_inst_vec_map = Emb.getInstVecMap();
			llvm_func_vec_map = Emb.getFunctionVecMap();
			llvm_pgm_vec = Emb.getProgramVector();
		}
		else {
			IR2Vec::Embeddings Emb(*Module, ir2vecMode, vocab_path, level[0], nullptr);
			llvm_inst_vec_map = Emb.getInstVecMap();
			llvm_func_vec_map = Emb.getFunctionVecMap();
			llvm_pgm_vec = Emb.getProgramVector();
		}

		PyDict_SetItemString(Embedding_dict, "Instruction_Dict", createInstructionVectorDict(llvm_inst_vec_map));
		PyDict_SetItemString(Embedding_dict, "Function_Dict", createFunctionVectorDict(llvm_func_vec_map));
		PyDict_SetItemString(Embedding_dict, "Program_List", createProgramVectorList(llvm_pgm_vec));
		PyDict_SetItemString(
			Embedding_dict, "Message",
			PyUnicode_FromString("Generated Embeddings are dumped either in "
								"output_file or on stdout"));
		PyDict_SetItemString(Embedding_dict, "Status", Py_True);

		return Embedding_dict;
  	} else {
		PyDict_SetItemString(Embedding_dict, "Message",
						PyUnicode_FromString("PyArgsParseTuple didnt worked"));
		PyDict_SetItemString(Embedding_dict, "Status", Py_False);
		return Embedding_dict;
	}
}
PyMethodDef IR2Vec_core_Methods[] = {
    {"generateEmbeddings", (PyCFunction)IR2Vec_generateEmbeddings, METH_VARARGS,
     "As specified"},
    {"setSeedEmbdPath", (PyCFunction)set_seed_embedding_path, METH_VARARGS,
     "As specified"},
    {"getVersion", getIR2VecVersion, METH_VARARGS, "Get IR2Vec Version"},
    {NULL, NULL, 0, NULL} /* Sentinel */
};
struct PyModuleDef IR2Vec_def = {
	PyModuleDef_HEAD_INIT,
	"IR2Vec.core", /* name of module NOT THE NAME OF PACKAGE*/
	"take .bc/.ll as input and generates corresponding IR2VEc "
	"Embeddings", /* module documentation, may be NULL */
	-1,           /* size of per-interpreter state of the module,
					or -1 if the module keeps state in global variables. */
	IR2Vec_core_Methods
};
PyMODINIT_FUNC PyInit_core(void) { return PyModule_Create(&IR2Vec_def); }
