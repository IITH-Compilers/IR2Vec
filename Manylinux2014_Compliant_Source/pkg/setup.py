# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

from setuptools import setup, Extension
import subprocess as sp
import pathlib as pl
import re

version_regex = re.compile(r"^project\(ir2vec VERSION (?P<version>[^)]+)\)$")
llvm_libs_regex = re.compile(
    r"^llvm_map_components_to_libnames\(llvm_libs (?P<libs>[^)]+)\)$"
)

LLVM_LIBS = []
VERSION = ""
DESCRIPTION = ""

with (pl.Path(__file__).resolve().parents[2] / "CMakeLists.txt").open() as f:
    for line in f:
        if not VERSION:
            vmatch = version_regex.match(line)  # Not using walrus because Python3.6
            if vmatch:
                VERSION = vmatch.group("version")
                continue
        if not LLVM_LIBS:
            libmatch = llvm_libs_regex.match(line)
            if libmatch:
                LLVM_LIBS = libmatch.group("libs").split()
                continue
        if VERSION and LLVM_LIBS:
            break

with (pl.Path(__file__).resolve().parents[2] / "README.md").open() as f:
    DESCRIPTION = f.read()


def get_llvm_files():
    out = sp.run(
        ["llvm-config", "--link-static", "--libfiles"] + LLVM_LIBS, stdout=sp.PIPE
    )
    files = out.stdout.decode("utf8").split()
    return files


IR2Vec_core = Extension(
    "IR2Vec.core",
    sources=["ir2vec/core.cpp"],
    include_dirs=["./ir2vec/"],
    libraries=["z"],
    extra_objects=["/usr/local/lib/libIR2Vec.a"] + get_llvm_files(),
    extra_compile_args=["-v", "--std=c++17"],
)

setup(
    name="IR2Vec",
    author="IR2Vec Developers",
    version=VERSION,
    description="LLVM IR based Program Embeddings for Compiler Optimizations and Program Comprehension",
    long_description=DESCRIPTION,
    long_description_content_type="text/markdown",
    url="https://github.com/IITH-Compilers/IR2Vec",
    license="Apache License v2.0 with LLVM Exceptions",
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        "Intended Audience :: Developers",
        "Intended Audience :: Science/Research",
        "License :: OSI Approved :: Apache Software License",
        "Programming Language :: C++",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Python :: 3.11",
        "Topic :: Scientific/Engineering :: Artificial Intelligence",
        "Topic :: Software Development :: Compilers",
    ],
    ext_modules=[IR2Vec_core],
    packages=["ir2vec"],
    include_package_data=True,
)
