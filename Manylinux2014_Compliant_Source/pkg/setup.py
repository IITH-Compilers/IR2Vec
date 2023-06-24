from setuptools import setup, Extension

import subprocess as sp

def get_llvm_files():
    libs = "support core irreader analysis TransformUtils".split()
    out = sp.run(['llvm-config', '--libfiles'] + libs, stdout=sp.PIPE)
    files = out.stdout.decode('utf8').split()
    return files


IR2Vec_core = Extension(
    "IR2Vec_pkg.core",
    sources=["IR2Vec_pkg/core.cpp"],
    include_dirs=[
        "./IR2Vec_pkg",
        "./IR2Vec_pkg/IR2Vec_include",
    ],  # list of directories to search for C/C++ header files (in Unix form for portability)
    libraries=["z"],
    extra_objects=["/usr/local/lib/libIR2Vec.a"] + get_llvm_files(),
    extra_compile_args=["-v"],
)

setup(
    name="IR2Vec_pkg",
    author="Shikhar Jain",
    author_email="cs22mtech02002@iith.ac.in",
    version="1.0.0",
    description="given input .ll/.bc generates corresponding IR2Vec embeddings in a file or on stdout",
    ext_modules=[IR2Vec_core],  # A list of Python extensions to be built
    packages=["IR2Vec_pkg"],  # A list of Python packages that distutils will manipulate
    # package_data={'':['*.so*','./IR2Vec_include/*','./llvm/*','./llvm-c/*','seedEmbeddingVocab-300-llvm12.txt']},
    package_data={
        "": [
            "./IR2Vec_include/*",
            "seedEmbeddingVocab-300-llvm12.txt",
        ]
    },
    include_package_data=True,
)
