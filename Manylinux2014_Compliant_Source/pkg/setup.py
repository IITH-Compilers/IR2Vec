# import subprocess as sp
# import re
from pathlib import Path

# import pathlib.Path
import glob

# import os
# from dbm.ndbm import library
from setuptools import setup, Extension

# from pathlib import Path

# print('$ORIGIN')


verson = ""
setup_path = Path(__file__).parent.resolve()
setup_path = "/".join((str(setup_path).split("/")[:-2]))
src_path = str(setup_path) + "/src"
src_path = Path(src_path)
for files in src_path.glob("*.txt"):
    if ((str(files).split("/"))[-1]) == "CMakeLists.txt":
        cmakelist = open(files)
        Lines = cmakelist.readlines()
        for line in Lines:
            if "project(ir2vec VERSION" in line:
                verson = (((((line.split(")"))[0]).split("("))[1]).split())[-1]


print("***********????????????????? ", verson, "????????????????****************")

IR2Vec_core = Extension(
    "IR2Vec_pkg.core",
    sources=["IR2Vec_pkg/core.cpp"],
    include_dirs=[
        "./IR2Vec_pkg",
        "./IR2Vec_pkg/IR2Vec_include",
    ],  # list of directories to search for C/C++ header files (in Unix form for portability)
    libraries=["z"],
    extra_objects=["./libIR2Vec.a", "./libLLVMMother.a"],
    extra_compile_args=["-v"],
)

setup(
    name="IR2Vec_pkg",
    author="Shikhar Jain and Anilava kundu",
    author_email="cs22mtech02002@iith.ac.in and cs20mtech01002@iith.ac.in",
    version=verson,  # read from main cmakelist of IR2Vec source folder
    description="python package to expose api for using ir2vec program embedding generator tool",
    maintainer="https://github.com/IITH-Compilers",
    url="https://compilers.cse.iith.ac.in/",
    download_url="https://github.com/IITH-Compilers/IR2Vec",
    license="BSD 4-Clause",
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        "Intended Audience :: Developers",
        "Intended Audience :: Information Technology",
        "Intended Audience :: Science/Research",
        "Programming Language :: C++",
        "Programming Language :: Python :: 3",
    ],
    ext_modules=[IR2Vec_core],  # A list of Python extensions to be built
    packages=["IR2Vec_pkg"],  # A list of Python packages that distutils will manipulate
    package_data={
        "": [
            "./IR2Vec_include/*",
            "./llvm/*",
            "./llvm-c/*",
            "seedEmbeddingVocab-300-llvm12.txt",
        ]
    },
    include_package_data=True,
)
