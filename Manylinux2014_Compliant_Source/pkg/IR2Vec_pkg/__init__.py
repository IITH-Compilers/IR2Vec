# import glob

# print("^^^^^^^^^^^^^^^^^^^^^^^^^^^^")
# install_loc_pkg2=repr(install_loc_pkg+"/*.so*")
# print("####################")
# print(install_loc_pkg)
# print("####################")
# print(so_files)
# print(core_so)
# print(core_so)
# print(patch_elf)

# patchelf --set-rpath . core.cpython-38-x86_64-linux-gnu.so

### we have to find package before importing it else export LD_Lib path and LIB_path will not work.
from . import preparation
from IR2Vec_pkg.core import *

setSeedEmbdPath(preparation.install_loc_pkg)
