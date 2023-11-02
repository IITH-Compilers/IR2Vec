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

PyObject *IR2Vec_generateEmbeddings(PyObject *self, PyObject *args) {
	Py_Initialize();

	const char *filename = "\0"; // need to generate module object from this .
								// Thus , need to add one more .cpp in .so
	const char *mode = "\0";

	string vocab_path = seed_emb_path + "/seedEmbeddingVocab-llvm16.txt";
	// const char*
	// vocab_path=(seed_emb_path+"/seedEmbeddingVocab-llvm16.txt").c_str(); //
	// this should be exact path till .txt . *** NOT TAKING THIS AS USER
	// DEFINED/PROVIDED ARGS ***
	const char *level = "\0"; // remember that ir2vec accepts a char type for this
	const char *output_file = "\0";

	PyObject *Embedding_dict = PyDict_New();
	PyObject *InstVecDict = PyDict_New();
	PyObject *FuncVecDict = PyDict_New();
	PyObject *PgmList = PyList_New(0);

	PyDict_SetDefault(Embedding_dict, PyUnicode_FromString("Instruction_Dict"),
						Py_None);
	PyDict_SetDefault(Embedding_dict, PyUnicode_FromString("Function_Dict"),
						Py_None);
	PyDict_SetDefault(Embedding_dict, PyUnicode_FromString("Program_List"),
						Py_None);
	PyDict_SetDefault(Embedding_dict, PyUnicode_FromString("Message"),
						PyUnicode_FromString("NA"));
	PyDict_SetDefault(Embedding_dict, PyUnicode_FromString("Status"), Py_False);

	if (PyArg_ParseTuple(args, "sss|s", &filename, &mode, &level, &output_file)) {

		// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ sanity checks
		// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

		ifstream temp;

		temp.open(filename, ios_base::in);
    	if (
			temp.peek() == ifstream::traits_type::eof() || temp.bad() == true ||
        	temp.fail() == true
		) {
			PyDict_SetItemString(
				Embedding_dict, "Message",
				PyUnicode_FromString(
					"Eroneous or empty .bc/.ll file location entred"));
			PyDict_SetItemString(Embedding_dict, "Status", Py_False);
			return Embedding_dict;
    	}
   		temp.close();
    	if (string(output_file).empty() == false) {
			temp.open(output_file, ios_base::in);
			if (temp.bad() == true || temp.fail() == true) {
				PyDict_SetItemString(
					Embedding_dict, "Message",
					PyUnicode_FromString("Eroneous output file location entred")
				);
				PyDict_SetItemString(Embedding_dict, "Status", Py_False);
				return Embedding_dict;
			}
      		temp.close();
    	}

		// ********* SINCE NOW WE ARE NOT TAKING VOCAB FILE LOCATION FROM USER HENCE
		// NO NEED OF THIS SANITY CHECK ******** temp.open(vocab_path,
		// ios_base::in); if(temp.peek()==ifstream::traits_type::eof() ||
		// temp.bad()==true || temp.fail()==true)
		// {
		//     PyDict_SetItemString(Embedding_dict,"Message",PyUnicode_FromString("Eroneous
		//     or empty seed embeddings text file location entered"));
		//     PyDict_SetItemString(Embedding_dict,"Status",Py_False);
		//     return Embedding_dict;

		// }
		// temp.close();
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

		if (string(mode) != string("sym") && string(mode) != string("fa")) {
			PyDict_SetItemString(
				Embedding_dict, "Message",
				PyUnicode_FromString(
					"Eroneous mode entered . Either of sym, fa should be specified"));
			PyDict_SetItemString(Embedding_dict, "Status", Py_False);
			return Embedding_dict;
		}

		// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Invokinng IR2Vec lib exposed
		// functions ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

		IR2Vec::iname = string(filename);
		IR2Vec::IR2VecMode m =
			(string(mode) == string("sym") ? IR2Vec::Symbolic : IR2Vec::FlowAware);
		// IR2Vec::Embeddings::obj();

		// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ C++ containers to hold data from LLVM
		// ADT's ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
		map<string, vector<double>> InstVecMap;
		map<string, vector<double>> FuncVecMap;
		vector<double> PgmVect;

		// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Temporary LLVM ADT's need to hold
		// returned ADt's by IR2vec lib ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
		llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
			llvm_inst_vec_map; // IR2Vec::Embeddings::obj.getInstVecMap();
		llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16>
			llvm_func_vec_map; // IR2Vec::Embeddings::obj.getFunctionVecMap();
		llvm::SmallVector<double, DIM>
			llvm_pgm_vec; // IR2Vec::Embeddings::obj.getProgramVector();

		// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ The scope of this
		// Module object is extremely crucial ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
		std::unique_ptr<llvm::Module> M;
		M = IR2Vec::getLLVMIR();

		// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ if output file is provided
		// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
		if (string(output_file) != "") {
		// cout<<"okok";return PyUnicode_FromString("Embedings have been generated
		// . Access them in the respective output file");
		string outFile = string(output_file);
		ofstream o;
		o.open(outFile,
				ios_base::app); // this means open a file , connect stream "o" to
								// it and then seek to the end of this stream
								// before each write ["ios_base::app"]
		IR2Vec::Embeddings Emb(*M, m, vocab_path, level[0], &o);

		// Emb is genertaed and intialized
		llvm_inst_vec_map = Emb.getInstVecMap();
		llvm_func_vec_map = Emb.getFunctionVecMap();
		llvm_pgm_vec = Emb.getProgramVector();

		}
		// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ using cout to dump the output
		// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
		else {
		IR2Vec::Embeddings Emb(*M, m, vocab_path, level[0], nullptr);
		llvm_inst_vec_map = Emb.getInstVecMap();
		llvm_func_vec_map = Emb.getFunctionVecMap();
		llvm_pgm_vec = Emb.getProgramVector();
		}

		// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ copying data from LLVM ADT's to C++
		// Containers ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ now make a python
		// dictionary that will hold 2 SmallMapVector and 1  SmallVector . But first
		// extract all data from LLVM data structure then store that data into c++
		// containers

		vector<double> temp2;
		char *readable_name;
		string demangledName;
		size_t sz = 17;
		int status = 0;
		// coying llvm samll map vector data into c++ map

		// for InstVecMap
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
			} else // if Value does not has a name
			{
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

		if (temp2.size() != 0) {
		temp2.clear();
		}

		// for FuncVecMap
		for (auto Func_it : llvm_func_vec_map) {
		// copy this SmallVector into c++ Vector
		for (auto &Vec_it : Func_it.second)
			temp2.push_back(Vec_it);

		// apply __cxx::demangle just to be cautious
		demangledName = IR2Vec::getDemagledName(Func_it.first);
		FuncVecMap[demangledName] = temp2;

		temp2.clear();
		}

		// for PgmVector
		for (auto &Pgm_it : llvm_pgm_vec)
		PgmVect.push_back(Pgm_it);

		// all c++ container are ready to convert
		// iterate over a c++ container , if it has embedd anotehr c++c ocntainer
		// then iterate over it also

		// copying c++ map into Pyobject dict

		// for InstVecMap

		for (auto Map_it1 : InstVecMap) {
		PyObject *temp3 = PyList_New(0);
		for (auto &List_it1 : Map_it1.second)
			PyList_Append(temp3, PyFloat_FromDouble(List_it1));
		PyDict_SetDefault(InstVecDict,
							PyUnicode_FromString((Map_it1.first).c_str()), Py_None);
		PyDict_SetItemString(InstVecDict, Map_it1.first.c_str(), temp3);

		// auto list_size=PyList_Size(temp3);
		// for(long i=0; i<list_size;i++)
		// PyObject_DelItem(temp3,PyLong_FromLong(i));
		}
		for (auto Map_it1 : FuncVecMap) {
		PyObject *temp3 = PyList_New(0);
		for (auto &List_it1 : Map_it1.second)
			PyList_Append(temp3, PyFloat_FromDouble(List_it1));
		PyDict_SetDefault(FuncVecDict,
							PyUnicode_FromString((Map_it1.first).c_str()), Py_None);
		PyDict_SetItemString(FuncVecDict, Map_it1.first.c_str(), temp3);

		// auto list_size=PyList_Size(temp3);
		// for(long i=0; i<list_size;i++)
		// PyObject_DelItem(temp3,PyLong_FromLong(i));
		}

		// copying c++ vector into boost::python list
		for (auto &Vec_it1 : PgmVect)
		PyList_Append(PgmList, PyFloat_FromDouble(Vec_it1));

		PyDict_SetItemString(Embedding_dict, "Instruction_Dict", InstVecDict);
		PyDict_SetItemString(Embedding_dict, "Function_Dict", FuncVecDict);
		PyDict_SetItemString(Embedding_dict, "Program_List", PgmList);
		PyDict_SetItemString(
			Embedding_dict, "Message",
			PyUnicode_FromString("Generated Embeddings are dumped either in "
								"output_file or on stdout"));
		PyDict_SetItemString(Embedding_dict, "Status", Py_True);

		return Embedding_dict;
  	}

	PyDict_SetItemString(Embedding_dict, "Message",
						PyUnicode_FromString("PyArgsParseTuple didnt worked"));
	PyDict_SetItemString(Embedding_dict, "Status", Py_False);
	return Embedding_dict;
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
