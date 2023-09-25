# Copyright (c) 2023, The Contributors of IR2Vec.
#
# Part of the IR2Vec project. This software is available under the BSD 4-Clause
# License. Please see LICENSE file in the top-level directory for more details.
#

### we have to find package before importing it else export LD_Lib path and LIB_path will not work.
from . import preparation
from IR2Vec.core import *

setSeedEmbdPath(preparation.install_loc_pkg)
