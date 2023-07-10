import pathlib as pl
import IR2Vec
import pytest

TEST_SUITE_DIR = pl.Path(__file__).parents[3] / "src" / "test-suite"
SEED_VERSION = "llvm12"

ll_files = []
path = TEST_SUITE_DIR / f"index-{SEED_VERSION}.files"
with (TEST_SUITE_DIR / f"index-{SEED_VERSION}.files").open() as f:
    for ll_file in f:
        ll_files.append(ll_file)


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
        output = IR2Vec.generateEmbeddings(full_path, "fa", "p")
        p_vectors.append(output["Program_List"])
    p_vectors_oracle = read_p_file(
        TEST_SUITE_DIR / "oracle" / f"FA_{SEED_VERSION}" / "ir2vec.txt"
    )
    assert p_vectors == p_vectors_oracle
