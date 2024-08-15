# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

### we have to find package before importing it else export LD_Lib path and LIB_path will not work.
from . import preparation
from IR2Vec.core import *

import pathlib as pl
import os, io

__version__ = getVersion()
__copyright__ = "Copyright The Contributors of IR2Vec"
__license__ = "Apache License v2.0 with LLVM Exceptions"
