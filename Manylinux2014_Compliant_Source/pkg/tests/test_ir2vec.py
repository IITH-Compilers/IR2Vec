# Copyright (c) 2023, The Contributors of IR2Vec.
#
# Part of the IR2Vec project. This software is available under the BSD 4-Clause
# License. Please see LICENSE file in the top-level directory for more details.
#

import pathlib as pl
import IR2Vec
import pytest

from collections import defaultdict

ABS_ACCURACY = 1e-4

TEST_SUITE_DIR = pl.Path(__file__).resolve().parents[3] / "src" / "test-suite"
SEED_VERSION = (
    list(IR2Vec.preparation.install_loc.glob("seed*.txt"))[0]
    .name.split(".")[0]
    .split("-")[-1]
)

ll_files = []
path = TEST_SUITE_DIR / f"index-{SEED_VERSION}.files"
with (TEST_SUITE_DIR / f"index-{SEED_VERSION}.files").open() as f:
    for ll_file in f:
        ll_files.append(ll_file)


def read_f_file(path):
    f_map = defaultdict(dict)
    with path.open() as f:
        for line in f:
            fouts = line.split("=")
            vec = fouts[-1]
            fname = "=".join(fouts[:-1])
            fname = fname.strip()
            path, only_fname = fname.split(".cpp", 1)
            filename = "".join([path.split("/")[1], ".ll"])
            only_fname = only_fname.strip()[2:]
            vec = list(map(float, vec.strip().split()))
            f_map[filename][only_fname] = vec
    return f_map


def read_p_file(path):
    p_vectors = []
    with path.open() as f:
        for line in f:
            p_vectors.append(list(map(float, line.strip().split())))
    return p_vectors


def test_fa_p():
    p_vectors = []
    for file in ll_files:
        full_path = str((TEST_SUITE_DIR / file).resolve()).strip()

        initObj = IR2Vec.initEmbedding(full_path, "fa", "p")
        assert(initObj is not None)

        progVector1 = IR2Vec.getProgramVector(initObj)
        assert(progVector1 is not None)

        progVector2 = initObj.getProgram()
        assert(progVector2 is not None)

        for idx, v in enumerate(progVector1):
            assert v == pytest.approx(progVector2[idx], abs=ABS_ACCURACY)

        p_vectors.append(progVector1)

    print(TEST_SUITE_DIR)
    p_vectors_oracle = read_p_file(
        TEST_SUITE_DIR / "oracle" / f"FA_{SEED_VERSION}_p" / "ir2vec.txt"
    )
    for idx, v in enumerate(p_vectors):
        assert v == pytest.approx(p_vectors_oracle[idx], abs=ABS_ACCURACY)


def test_sym_p():
    p_vectors = []
    for file in ll_files:
        full_path = str((TEST_SUITE_DIR / file).resolve()).strip()

        initObj = IR2Vec.initEmbedding(full_path, "sym", "p")
        assert(initObj is not None)
        
        progVector1 = IR2Vec.getProgramVector(initObj)
        assert(progVector1 is not None)

        progVector2 = initObj.getProgram()
        assert(progVector2 is not None)

        for idx, v in enumerate(progVector1):
            assert v == pytest.approx(progVector2[idx], abs=ABS_ACCURACY)

        p_vectors.append(progVector1)

    print(TEST_SUITE_DIR)
    p_vectors_oracle = read_p_file(
        TEST_SUITE_DIR / "oracle" / f"SYM_{SEED_VERSION}_p" / "ir2vec.txt"
    )
    for idx, v in enumerate(p_vectors):
        assert v == pytest.approx(p_vectors_oracle[idx], abs=ABS_ACCURACY)


def test_fa_f():
    f_vecs = defaultdict(dict)
    for file in ll_files:
        path = (TEST_SUITE_DIR / file).resolve()
        full_path = str(path).strip()

        initObj = IR2Vec.initEmbedding(full_path, "fa", "f")
        assert(initObj is not None)

        functionVectorMap = IR2Vec.getFunctionVectors(initObj)
        assert(functionVectorMap is not None)

        functionVectorMap2 = initObj.getFunctionVectorMap()
        assert(functionVectorMap2 is not None)

        for fun, vec in functionVectorMap.items():
            assert vec == pytest.approx(functionVectorMap2[fun], abs=ABS_ACCURACY)

            f_vecs[path.name.strip()][fun.strip()] = vec

            ## TODO :: get function name from Demangled name fun
            functionOutput = IR2Vec.getFunctionVectors(initObj, fun)
            assert(functionOutput is not None)

            functionOutput2 = initObj.getFunctionVectorMap(fun)
            assert(functionOutput2 is not None)

            for idx, v in functionOutput.items():
                assert v == pytest.approx(functionOutput2[idx], abs=ABS_ACCURACY)

            functionOutputFuncs = list(functionOutput.keys())
            if fun in functionOutputFuncs:
                assert (
                    vec == pytest.approx(functionOutput[fun], abs=ABS_ACCURACY)
                )
            elif fun.strip() in functionOutputFuncs:
                assert (
                    vec == pytest.approx(functionOutput[fun.strip()], abs=ABS_ACCURACY)
                )

    print(TEST_SUITE_DIR)
    f_vecs_oracle = read_f_file(
        TEST_SUITE_DIR / "oracle" / f"FA_{SEED_VERSION}_f" / "ir2vec.txt"
    )
    for pname, funs in f_vecs_oracle.items():
        for fname, vec in funs.items():
            assert vec == pytest.approx(
                f_vecs[pname][fname], abs=ABS_ACCURACY
            ), f"Checking {pname}: {fname}"


def test_sym_f():
    f_vecs = defaultdict(dict)
    for file in ll_files:
        path = (TEST_SUITE_DIR / file).resolve()
        full_path = str(path).strip()

        initObj = IR2Vec.initEmbedding(full_path, "sym", "f")
        assert(initObj is not None)

        functionVectorMap = IR2Vec.getFunctionVectors(initObj)
        assert(functionVectorMap is not None)

        functionVectorMap2 = initObj.getFunctionVectorMap()
        assert(functionVectorMap2 is not None)

        for fun, vec in functionVectorMap.items():
            assert vec == pytest.approx(functionVectorMap2[fun], abs=ABS_ACCURACY)

            f_vecs[path.name.strip()][fun.strip()] = vec

            ## TODO :: get function name from Demangled name
            functionOutput = IR2Vec.getFunctionVectors(initObj, fun)
            assert(functionOutput is not None)

            functionOutput2 = initObj.getFunctionVectorMap(fun)
            assert(functionOutput2 is not None)

            for idx, v in functionOutput.items():
                assert v == pytest.approx(functionOutput2[idx], abs=ABS_ACCURACY)

            functionOutputFuncs = list(functionOutput.keys())
            if fun in functionOutputFuncs:
                assert (
                    vec == pytest.approx(functionOutput[fun], abs=ABS_ACCURACY)
                )
            elif fun.strip() in functionOutputFuncs:
                assert (
                    vec == pytest.approx(functionOutput[fun.strip()], abs=ABS_ACCURACY)
                )

    print(TEST_SUITE_DIR)
    f_vecs_oracle = read_f_file(
        TEST_SUITE_DIR / "oracle" / f"SYM_{SEED_VERSION}_f" / "ir2vec.txt"
    )
    for pname, funs in f_vecs_oracle.items():
        for fname, vec in funs.items():
            assert vec == pytest.approx(
                f_vecs[pname][fname], abs=ABS_ACCURACY
            ), f"Checking {pname}: {fname}"
