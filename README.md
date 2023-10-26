# IR2Vec
`IR2Vec` is a LLVM IR based framework to generate distributed representations for the source code in an unsupervised manner, which can be used to represent programs as input to solve machine learning tasks that take programs as inputs.

This repo contains the source code and relevant information described in the [paper](https://doi.org/10.1145/3418463) ([arXiv](https://arxiv.org/abs/1909.06228)).
Please see [here](https://compilers.cse.iith.ac.in/projects/ir2vec/) for more details.

> IR2Vec: LLVM IR Based Scalable Program Embeddings, S. VenkataKeerthy, Rohit Aggarwal, Shalini Jain, Maunendra Sankar Desarkar, Ramakrishna Upadrasta, and Y. N. Srikant

![LLVM](https://img.shields.io/badge/LLVM-v14.0.0-blue)
![PyPI Version](https://img.shields.io/pypi/v/your-package-name)
![Tests](https://github.com/IITH-Compilers/IR2Vec/workflows/Tests/badge.svg)
![Publish](https://github.com/IITH-Compilers/IR2Vec/workflows/Publish/badge.svg)
![pre-commit checks](https://github.com/IITH-Compilers/IR2Vec/workflows/pre-commit%20checks/badge.svg)

![Image](images/ir2vec.jpg)

## LLVM Version Archive

| LLVM Version | Branch |
| ------------ | ------ |
| LLVM 14.0.0 | [main](https://github.com/IITH-Compilers/IR2Vec) |
| LLVM 12.0.0 | [llvm12](https://github.com/IITH-Compilers/IR2Vec/tree/llvm12) |
| LLVM 10.0.1 | [llvm10](https://github.com/IITH-Compilers/IR2Vec/tree/llvm10) |
| LLVM 8.0.1 | [llvm8](https://github.com/IITH-Compilers/IR2Vec/tree/llvm8) |

## Table Of Contents
- [IR2Vec](#ir2vec)
    - [LLVM Version Archive](#llvm-version-archive)
    - [Table Of Contents](#table-of-contents)
    - [Installation](#installation)
    - [Python](#python)
    - [Cpp](#cpp)
    - [Requirements](#requirements)
    - [Building from source](#building-from-source)
    - [Generating program representations](#generating-program-representations)
        - [Using Binary](#using-binary)
            - [Command-Line options](#command-line-options)
            - [Flow-Aware Embeddings](#flow-aware-embeddings)
            - [Symbolic Embeddings](#symbolic-embeddings)
    - [Using Libraries](#using-libraries)
    - [Using Python package (IR2Vec-Wheels)](#using-python-package-ir2vec-wheels)
    - [Binaries, Libraries and Wheels - Artifacts](#binaries-libraries-and-wheels---artifacts)
    - [Experiments](#experiments)
        - [Note](#note)
    - [Citation](#citation)
    - [Contributions](#contributions)
    - [License](#license)

## Installation

`IR2Vec` can be installed in different ways to accommodate individual preferences and requirements effectively. You may select to install via a user-friendly Python wheel setup if you are a Python user, or opt for a C++ based installation if you are looking to integrate with a compiler pass or necessitate advanced control and enhanced integration capabilities. The detailed setup steps are mentioned in the following sections.

## Python

If you prefer working with Python, you can easily install `IR2Vec` using `pip`.

```
pip install -U ir2vec
```
Now, you can import and use IR2Vec in your Python projects. Make sure you have a good understanding of Python and its package management system.

We are actively working on improving the Python interfaces and providing better support. If you find any good-to-have interfaces that you may need for your use case missing, please feel free to raise a request.

## Cpp

If you're a C++ developer and require low-level control, optimization, or integration with C++ projects, you can build `IR2Vec` from source. First, ensure the below requirements are satisfied, then follow the steps mentioned in the [Building from source](#building-from-source) section.

## Requirements
* cmake (>= 3.13.4)
* GNU Make (4.2.1)
* LLVM (14.0.0) - [src](https://github.com/llvm/llvm-project/tree/release/14.x), [release](https://releases.llvm.org/download.html#14.0.0)
    * Support for latest LLVM versions would be added soon
* Eigen library (3.3.7)
* Python (3.6.7)
* Other python requirements
    * For training the vocabulary are available in [seed_embeddings/OpenKE/requirements.txt](./seed_embeddings/OpenKE/requirements.txt), and
    * For running experiments are available in [experiments/exp_requirements.yaml](./experiments/exp_requirements.yaml)
    * Conda/Anaconda based virtual environment is assumed

(Experiments are done on an Ubuntu 20.04 machine)


## Building from source
1. `mkdir build && cd build`
2. IR2Vec uses Eigen library. If your system already have Eigen (3.3.7) setup, you can skip this step.
    1. Download and extract the released version.
        * `wget https://gitlab.com/libeigen/eigen/-/archive/3.3.7/eigen-3.3.7.tar.gz`
        * `tar -xvzf eigen-3.3.7.tar.gz`
    2. `mkdir eigen-build && cd eigen-build`
    3. `cmake ../eigen-3.3.7 && make`
    4. `cd ../`
3. `cmake -DLT_LLVM_INSTALL_DIR=<path_to_LLVM_build_dir> -DEigen3_DIR=<path_to_eigen_build_dir> [-DCMAKE_INSTALL_PREFIX=<install_dir>] ../src`
4. `make [&& make install]`

This process would generate `ir2vec` binary under `build/bin` directory, `libIR2Vec.a` and `libIR2Vec.so` under `build/lib` directory.

To ensure the correctness, run `make verify-all`



## Generating program representations
`IR2Vec` can be used either as a stand-alone tool using binary or can be integrated with any third-party tools using libraries. Please see below for the usage
instructions.

### Using Binary
> ir2vec -\<mode\> -vocab \<seedEmbedding-file-path\> -o \<output-file\> -level \<p|f\> -class \<class-number\> -funcName=\<function-name\> \<input-ll-file\>

#### Command-Line options

- `mode` - can be one of `sym`/`fa`
    - `sym` denotes Symbolic representation
    - `fa` denotes Flow-Aware representation
- `vocab`  - the path to the seed embeddings file
-  `o` - file in which the embeddings are to be appended;     (Note : If  file doesn’t exist, new file would be created, else embeddings would be appended)
- `level` - can be one of chars `p`/`f`.
    - `p` denotes `program level` encoding
    - `f` denotes `function level` encoding
- `class` - non-mandatory argument. Used for the purpose of mentioning class labels for *classification tasks* (To be used with the `level p`). Defaults to *-1*.  When, not equal to -1, the pass prints `class-number` followed by the corresponding  embeddings
- `funcName` - also a non-mandatory argument. Used for generating embeddings only for the functions with given name. `level` should be `f` while using this option

Please use `--help` for further details.

**Format of the output embeddings in `output_file`**
- If the `level` is `p`:

>     <class-number> <Embeddings>
*class-number would be printed only if it is not -1*

 - If the `level` is `f`

>     <function-name> = <Embeddings>

#### Flow-Aware Embeddings
For all functions
* `` ir2vec -fa -vocab vocabulary/seedEmbeddingVocab-llvm14.txt -o <output_file> -level <p|f>  -class <class-number> <input_ll_file>``

For a specific function
* `` ir2vec -fa -vocab vocabulary/seedEmbeddingVocab-llvm14.txt -o <output_file> -level f  -class <class-number> -funcName=\<function-name\><input_ll_file>``

#### Symbolic Embeddings
For all functions
 * `` ir2vec -sym -vocab vocabulary/seedEmbeddingVocab-llvm14.txt -o <output_file> -level <p|f> -class <class-number> <input_ll_file>``
For a specific function
 * `` ir2vec -sym -vocab vocabulary/seedEmbeddingVocab-llvm14.txt -o <output_file> -level f -class <class-number> -funcName=\<function-name\> <input_ll_file>``

## Using Libraries
The libraries can be installed by passing the installation location to the `CMAKE_INSTALL_PREFIX` flag during `cmake` followed by `make install`.
The interfaces are available in [`IR2Vec.h`](./src/include/IR2Vec.h). External projects that would like to use `IR2Vec` can access the functionality
using these exposed interfaces on including `IR2Vec.h` from the installed location after linking statically or dynamically.

* If the project does not use LLVM, LLVM dependencies have to be linked and included separately.
* Please ensure that the IR2Vec libraries are compiled with compatible LLVM.
   * If you are getting errors, please recompile IR2Vec by passing the current LLVM install directory path to `LT_LLVM_INSTALL_DIR` during cmake.

The following template can be used to link IR2vec libraries on a cmake based project.

```cmake
set(IR2VEC_INSTALL_DIR "" CACHE PATH "IR2Vec installation directory")
include_directories("${IR2VEC_INSTALL_DIR}/include")
target_link_libraries(<your_executable_or_library> PUBLIC ${IR2VEC_INSTALL_DIR}/lib/<libIR2Vec.a or libIR2Vec.so>)
```

And then pass the location of IR2Vec's install prefix to `DIR2VEC_INSTALL_DIR` during cmake.

The following example snippet shows how to query the exposed vector representations.

```c++
#include "IR2Vec.h"

// Creating object to generate FlowAware representation
auto ir2vec =
      IR2Vec::Embeddings(<LLVM Module>, IR2Vec::IR2VecMode::FlowAware,
                         "./vocabulary/seedEmbeddingVocab-llvm14.txt");

// Getting Instruction vectors corresponding to the instructions in <LLVM Module>
auto instVecMap = ir2vec.getInstVecMap();
// Access the generated vectors
for (auto instVec : instVecMap) {
    outs() << "Instruction : ";
    instVec.first->print(outs());
    outs() << ": ";

    for (auto val : instVec.second)
      outs() << val << "\t";
}

// Getting vectors corresponding to the functions in <LLVM Module>
auto funcVecMap = ir2vec.getFunctionVecMap();
// Access the generated vectors
for (auto funcVec : funcVecMap) {
    outs() << "Function : " << funcVec.first->getName() << "\n";
    for (auto val : funcVec.second)
      outs() << val << "\t";
  }

// Getting the program vector
auto pgmVec = ir2vec.getProgramVector();
// Access the generated vector
for (auto val : pgmVec)
    outs() << val << "\t";
```

## Using Python package (IR2Vec-Wheels)
- Input:
  - .ll/.bc file for which embeddings are needed
  - `fa` -> Flow-Aware Encoddings; `sym` -> Symbolic Encodings
  - `p` -> program level; `f` -> function level
- Output:
    - A dictionary containing:
        - `Instruction_Dict`: Key: Instruction[String]; Value : Embedding Vector
        - `Function_Dict`: Key: Function name[String]; Value : Embedding Vector
        - `Program_List`: Program/Module Name[String]; Embedding Vector
        - `Message`: [String] Appropriate debug message.
        - `Status`: [Bool] True if everything went fine else False
- The following code snippet contains an example to demonstrate the usage of the package.

```python
import IR2Vec as i2v

emb = i2v.generateEmbeddings("/path/to/file.ll", "fa", "f")

if emb["Status"]:
    for x in emb["Function_Dict"]:
        print("key: ", x)
        print("Value: ", emb["Function_Dict"][x])
    print("\n\n")
    print(emb["Instruction_Dict"].keys())
else:
    print(emb["Message"])

```
## Binaries, Libraries and Wheels - Artifacts
Binaries, Libraries (.a and .so), and whl files are autogenerated for every relevant check-in using GitHub Actions. Such generated artifacts are tagged along with the successful runs of [`Publish`](https://github.com/IITH-Compilers/IR2Vec/actions?query=workflow%3APublish) and [`Build Wheels`](https://github.com/IITH-Compilers/IR2Vec/actions/workflows/wheel.yml) actions.

## Experiments

### Note
<code> The results mentioned in the experiment's scripts/the published version are not updated for this branch. The experimental results for this branch would be different when compared to the published version. For comparison, use the release corresponding to [v0.1.0](https://github.com/IITH-Compilers/IR2Vec/releases/tag/v0.1.0). </code>

* [Device Mapping](./experiments/Device_Mapping)
* [Thread Coarsening](./experiments/Thread_Coarsening)
* [OOV](./experiments/Out_Of_Vocabulary)
* [Time Taken](./experiments/TimeTaken)

## Citation
```
@article{VenkataKeerthy-2020-IR2Vec,
author = {VenkataKeerthy, S. and Aggarwal, Rohit and Jain, Shalini and Desarkar, Maunendra Sankar and Upadrasta, Ramakrishna and Srikant, Y. N.},
title = {{IR2Vec: LLVM IR Based Scalable Program Embeddings}},
year = {2020},
issue_date = {December 2020},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
volume = {17},
number = {4},
issn = {1544-3566},
url = {https://doi.org/10.1145/3418463},
doi = {10.1145/3418463},
journal = {ACM Trans. Archit. Code Optim.},
month = dec,
articleno = {32},
numpages = {27},
keywords = {heterogeneous systems, representation learning, compiler optimizations, LLVM, intermediate representations}
}
```
## Contributions
Please feel free to raise issues to file a bug, pose a question, or initiate any related discussions. Pull requests are welcome :)

## License
IR2Vec is released under a BSD 4-Clause License. See the LICENSE file for more details.
