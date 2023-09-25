# Copyright (c) 2023, The Contributors of IR2Vec.
#
# Part of the IR2Vec project. This software is available under the BSD 4-Clause
# License. Please see LICENSE file in the top-level directory for more details.
#

### we have to find package before importing it else export LD_Lib path and LIB_path will not work.
from . import preparation
from IR2Vec.core import *

import pathlib as pl
import re

version_regex = re.compile(r"^project\(ir2vec VERSION (?P<version>[^)]+)\)$")
VERSION = ""
with (pl.Path(__file__).resolve().parents[2] / "src" / "CMakeLists.txt").open() as f:
    for line in f:
        if not VERSION:
            vmatch = version_regex.match(line)  # Not using walrus because Python3.6
            if vmatch:
                VERSION = vmatch.group("version")
                continue
        break
    
__version__ = VERSION
__copyright__ = "Copyright The Contributors of IR2Vec"
__license__ = "BSD 4-Clause License"

setSeedEmbdPath(preparation.install_loc_pkg)
