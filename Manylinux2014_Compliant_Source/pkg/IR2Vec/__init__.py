### we have to find package before importing it else export LD_Lib path and LIB_path will not work.
from . import preparation
from IR2Vec.core import *

setSeedEmbdPath(preparation.install_loc_pkg)
