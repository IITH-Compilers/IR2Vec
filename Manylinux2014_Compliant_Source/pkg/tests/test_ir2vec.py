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
        initObj = IR2Vec.initEmbedding(full_path)
        output = IR2Vec.generateEncodings(initObj["fileName"], initObj["outputFile"], "fa", "p")
        p_vectors.append(output["Program_List"])

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
        initObj = IR2Vec.initEmbedding(full_path)
        output = IR2Vec.generateEncodings(initObj["fileName"], initObj["outputFile"], "sym", "p")
        p_vectors.append(output["Program_List"])

    print(TEST_SUITE_DIR)
    p_vectors_oracle = read_p_file(
        TEST_SUITE_DIR / "oracle" / f"SYM_{SEED_VERSION}_p" / "ir2vec.txt"
    )
    for idx, v in enumerate(p_vectors):
        assert v == pytest.approx(p_vectors_oracle[idx], abs=ABS_ACCURACY)


def test_fa_f():
    f_vecs = defaultdict(dict)
    for file in ll_files:
        full_path = (TEST_SUITE_DIR / file).resolve()
        initObj = IR2Vec.initEmbedding(str(full_path).strip())
        output = IR2Vec.generateEncodings(initObj["fileName"], initObj["outputFile"], "fa", "f")
        for fun, vec in output["Function_Dict"].items():
            f_vecs[full_path.name.strip()][fun.strip()] = vec

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
        full_path = (TEST_SUITE_DIR / file).resolve()
        initObj = IR2Vec.initEmbedding(str(full_path).strip())
        output = IR2Vec.generateEncodings(initObj["fileName"], initObj["outputFile"], "sym", "f")
        for fun, vec in output["Function_Dict"].items():
            f_vecs[full_path.name.strip()][fun.strip()] = vec

    print(TEST_SUITE_DIR)
    f_vecs_oracle = read_f_file(
        TEST_SUITE_DIR / "oracle" / f"SYM_{SEED_VERSION}_f" / "ir2vec.txt"
    )
    for pname, funs in f_vecs_oracle.items():
        for fname, vec in funs.items():
            assert vec == pytest.approx(
                f_vecs[pname][fname], abs=ABS_ACCURACY
            ), f"Checking {pname}: {fname}"
