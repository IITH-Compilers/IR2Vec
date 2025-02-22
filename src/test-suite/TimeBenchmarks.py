# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

import csv
import time
import argparse
import subprocess
from pathlib import Path


SEED_VERSION = "llvm20"
# IR2Vec binary relative to this script: "../../build/bin/ir2vec"
IR2VEC_PATH = (Path(__file__).parents[2] / "build/bin/ir2vec").resolve()


def evaluate_benchmark(benchmark_path: Path, mode: str, repeat: int):
    command = [
        IR2VEC_PATH,
        f"-{mode}",
        "-level",
        "p",
        "-o",
        "/dev/null",
        benchmark_path.resolve(),
    ]
    trials_time = []
    for _ in range(repeat):
        start = time.perf_counter_ns()

        subprocess.run(command)

        # duration with ns to ms convertion
        duration = (time.perf_counter_ns() - start) / 1_000_000
        trials_time.append(duration)
    avg_time = sum(trials_time) / repeat
    return round(avg_time, 2)


if __name__ == "__main__":
    default_repeat = 5
    default_ir_path = Path(__file__).parent / f"PE-benchmarks-llfiles-{SEED_VERSION}"

    parser = argparse.ArgumentParser(
        prog="TimeBenchmarks",
        description="Performance evaluation script of `PE-benchmarks`",
    )

    parser.add_argument(
        "--benchmarks_path",
        type=str,
        default=(default_ir_path).resolve(),
        help='Path to benchmarks ".ll" files. ' f"(default={default_ir_path})",
    )

    parser.add_argument(
        "--repeat",
        type=int,
        default=default_repeat,
        help="Number of repeats of a single benchmark "
        "evaluation, result reported is the average runtime. "
        f"(default={default_repeat})",
    )

    parser.add_argument(
        "-o",
        "--output_file",
        type=str,
        default=f"TimeTaken-{int(time.time())}.csv",
        help="Output file name, generated relative to where "
        "this script was executed. "
        '(default="TimeTaken-<CURRENT_TIME>.csv")',
    )
    args = parser.parse_args()

    benchmarks_ll_path = Path(args.benchmarks_path)

    print("Saving results to: ", Path(args.output_file).resolve())
    with open(args.output_file, "w") as csv_file:
        writer = csv.writer(csv_file)
        writer.writerow(["Benchmarks", "FA", "SYM"])  # header
        rows = []
        for ll_file in benchmarks_ll_path.glob("*.ll"):
            benchmark_name = ll_file.stem
            fa_time = evaluate_benchmark(ll_file, "fa", args.repeat)
            sym_time = evaluate_benchmark(ll_file, "sym", args.repeat)
            rows.append([benchmark_name, fa_time, sym_time])
        # sort rows using the average flow-aware (FA) time
        rows = sorted(rows, key=lambda x: x[1])
        writer.writerows(rows)
