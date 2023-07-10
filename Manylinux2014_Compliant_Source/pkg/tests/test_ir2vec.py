import pathlib as pl
import IR2Vec
import pytest

ABS_ACCURACY = 1e-6

TEST_SUITE_DIR = pl.Path(__file__).parents[3] / "src" / "test-suite"
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
    f_map = {}
    with path.open() as f:
        for line in f:
            fname, vec = line.split("=")
            fname = fname.strip()
            vec = list(map(float, vec.strip().split()))
            f_map[fname] = vec
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
        output = IR2Vec.generateEmbeddings(full_path, "fa", "p")
        p_vectors.append(output["Program_List"])
    p_vectors_oracle = read_p_file(
        TEST_SUITE_DIR / "oracle" / f"FA_{SEED_VERSION}" / "ir2vec.txt"
    )
    for idx, v in enumerate(p_vectors):
        assert v == pytest.approx(p_vectors_oracle[idx], abs=ABS_ACCURACY)


def test_sym_p():
    p_vectors = []
    for file in ll_files:
        full_path = str((TEST_SUITE_DIR / file).resolve()).strip()
        output = IR2Vec.generateEmbeddings(full_path, "sym", "p")
        p_vectors.append(output["Program_List"])
    p_vectors_oracle = read_p_file(
        TEST_SUITE_DIR / "oracle" / f"SYM_{SEED_VERSION}" / "ir2vec.txt"
    )
    for idx, v in enumerate(p_vectors):
        assert v == pytest.approx(p_vectors_oracle[idx], abs=ABS_ACCURACY)
