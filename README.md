# IR2Vec
`IR2Vec` is a LLVM IR based framework to generate distributed representations for the source code in an unsupervised manner, which can be used to represent programs as input to solve machine learning tasks that take programs as inputs.

This repo contains the source code and relevant information described in the [paper](https://doi.org/10.1145/3418463) ([arXiv](https://arxiv.org/abs/1909.06228)).
Please see [here](https://compilers.cse.iith.ac.in/projects/ir2vec/) for more details.

> IR2Vec: LLVM IR Based Scalable Program Embeddings, S. VenkataKeerthy, Rohit Aggarwal, Shalini Jain, Maunendra Sankar Desarkar, Ramakrishna Upadrasta, and Y. N. Srikant

[![LLVM](https://img.shields.io/badge/LLVM-v18.1.8-blue)](https://github.com/llvm/llvm-project/releases/tag/llvmorg-18.1.8)
[![PyPI Version](https://img.shields.io/pypi/v/IR2Vec)](https://pypi.org/project/IR2Vec/)
![Tests](https://github.com/IITH-Compilers/IR2Vec/workflows/Tests/badge.svg)
![Publish](https://github.com/IITH-Compilers/IR2Vec/workflows/Publish/badge.svg)
![pre-commit checks](https://github.com/IITH-Compilers/IR2Vec/workflows/pre-commit%20checks/badge.svg)

![Image](images/ir2vec.jpg)

## LLVM Version Archive

| LLVM Version | Branch |
| ------------ | ------ |
| LLVM 18.1.8 | [main](https://github.com/IITH-Compilers/IR2Vec) |
| LLVM 17.0.6 | [llvm17](https://github.com/IITH-Compilers/IR2Vec/tree/llvm17) |
| LLVM 16.0.1 | [llvm16](https://github.com/IITH-Compilers/IR2Vec/tree/llvm16) |
| LLVM 14.0.1 | [llvm14](https://github.com/IITH-Compilers/IR2Vec/tree/llvm14) |
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
    - [Initialization -ir2vec.initEmbedding](#initialization--ir2vecinitembedding)
    - [getProgramVector](#getprogramvector)
    - [getFunctionVectors](#getfunctionvectors)
    - [getInstructionVectors](#getinstructionvectors)
  - [Example](#example)
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
* LLVM (18.1.8) - [src](https://github.com/llvm/llvm-project/tree/release/18.x), [release](https://releases.llvm.org/download.html#18.1.8)
    * Support for latest LLVM versions would be added soon
* Eigen library (3.3.7) (Optional)
* Python (3.6.7)
* Other python requirements
    * For training the vocabulary are available in [seed_embeddings/OpenKE/requirements.txt](./seed_embeddings/OpenKE/requirements.txt), and
    * For running experiments are available in [experiments/exp_requirements.yaml](./experiments/exp_requirements.yaml)
    * Conda/Anaconda based virtual environment is assumed
* LIT and FileCheck
    * To install LIT, run `pip3 install --user lit`
    * To install FileCheck, run `pip3 install --user filecheck`

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
3. `cmake -DLT_LLVM_INSTALL_DIR=<path_to_LLVM_build_dir> -DEigen3_DIR=<path_to_eigen_build_dir> [-DCMAKE_INSTALL_PREFIX=<install_dir>] ..`
4. `make [&& make install]`

This process would generate `ir2vec` binary under `build/bin` directory, `libIR2Vec.a` and `libIR2Vec.so` under `build/lib` directory.

To ensure the correctness, run `make check_ir2vec`



## Generating program representations
`IR2Vec` can be used either as a stand-alone tool using binary or can be integrated with any third-party tools using libraries. Please see below for the usage
instructions.

### Using Binary
> ir2vec -\<mode\> -dim \<dimensions\> -o \<output-file\> -level \<p|f\> -class \<class-number\> -funcName=\<function-name\> \<input-ll-file\>

#### Command-Line options

- `mode` - can be one of `sym`/`fa`
    - `sym` denotes Symbolic representation
    - `fa` denotes Flow-Aware representation
- `dim` - Dimensions of embeddings
    - This is an optional argument. Defaults to `300`.
    - Other supported dimensions are `75` and `100`
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
* `` ir2vec -fa -dim <dimension> -o <output_file> -level <p|f>  -class <class-number> <input_ll_file>``

For a specific function
* `` ir2vec -fa -dim <dimension> -o <output_file> -level f  -class <class-number> -funcName=\<function-name\><input_ll_file>``

#### Symbolic Embeddings
For all functions
 * `` ir2vec -sym -dim <dimension> -o <output_file> -level <p|f> -class <class-number> <input_ll_file>``
For a specific function
 * `` ir2vec -sym -dim <dimension> -o <output_file> -level f -class <class-number> -funcName=\<function-name\> <input_ll_file>``

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
      IR2Vec::Embeddings(<LLVM Module>, IR2Vec::IR2VecMode::FlowAware, <DIM>);

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
### Initialization -ir2vec.initEmbedding

**Description:** Initialize IR2Vec embedding for an LLVM IR file.

**Parameters:**

* `file_path`: str - Path to the `.ll` or `.bc` file.
* `encoding_type`: str - Choose `fa` (Flow-Aware) or `sym` (Symbolic).
* `level`: str - Choose `p` for program-level or `f` for function-level.
* `dim`: uint - Choose from `[300, 100, 75]`. Default value is `300`
* `output_file`: str - If provided, embeddings are saved to this file. Default is an empty string.

**Returns:**

* `IR2VecObject`: Initialized object for accessing embeddings.

**Example:**

```python
import ir2vec

# Approach 1
initObj = ir2vec.initEmbedding("/path/to/file.ll", "fa", "p")

# Approach 2
initObj = ir2vec.initEmbedding("/path/to/file.ll", "fa", "p", 100)

# Approach 3
initObj = ir2vec.initEmbedding("/path/to/file.ll", "fa", "p", 100, "output.txt")
```

### getProgramVector

**Description:** Gets the program-level vector representation.

**Parameters:** optional

**Returns:**

- `progVector`: ndarray - The program-level embedding vector.

**Example:**

```python
# Getting the program-level vector
progVector = initObj.getProgramVector()
```
### getFunctionVectors

**Description:** Gets function-level vectors for all functions in the LLVM IR file.

**Parameters:** optional

**Returns:**

- `functionVectorMap`: dict - A dictionary where keys are function names and values are ndarrays containing function-level embedding vectors.

**Example:**

```python
# Getting function-level vectors
functionVectorMap = initObj.getFunctionVectors()
```

### getInstructionVectors

**Description:** Gets instruction-level vectors for all instructions in the LLVM IR file.

**Parameters:** optional

**Returns:**

- `instructionVectorsList`: list - A list of list where each list contains instruction corresponding embedding vectors as values.

**Example:**

```python

# Getting instruction-level vectors
instructionVectorsList = initObj.getInstructionVectors()
```
## Example
- The following code snippet contains an example to demonstrate the usage of the package.

```python
import ir2vec
import numpy as np

# IR2Vec Python APIs can be used in two ways. As shown below.
initObj = ir2vec.initEmbedding("/path/to/file.ll", "fa", "p")

#Approach 1
progVector1 = ir2vec.getProgramVector(initObj)
functionVectorMap1 = ir2vec.getFunctionVectors(initObj)
instructionVectorsList1 = ir2vec.getInstructionVectors(initObj)

#Approach 2
progVector2 = initObj.getProgramVector()
functionVectorMap2 = initObj.getFunctionVectors()
instructionVectorsList2 = initObj.getInstructionVectors()

# Both the approaches would result in same outcomes
assert(np.allclose(progVector1,progVector2))

for fun, funcObj in functionVectorMap1.items():
    assert fun == funcObj["demangledName"]
    functionOutput1 = ir2vec.getFunctionVectors(
        initObj,
        funcObj["actualName"],
    )
    functionOutput2 = initObj.getFunctionVectors(
        funcObj["actualName"]
    )
    assert(np.allclose(functionOutput1[fun]["vector"],functionOutput2[fun]["vector"]))


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
IR2Vec is released under a Apache License v2.0 with LLVM Exceptions License. See the LICENSE file for more details.
