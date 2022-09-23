import subprocess as sp
import os
import sys
import pathlib as pl

install_loc = pl.Path(__file__).parent.resolve()
install_loc_pkg = str(install_loc)
so_files = os.scandir(install_loc_pkg)
core_so = ""
for x in so_files:
    if x.is_file():
        if "core.cpython" in x.name:
            core_so = x.name
core_so = install_loc_pkg + "/" + core_so
# patch_elf="patchelf"+" " +"--set-rpath"+" "+ install_loc_pkg+" "+core_so
# patch_elf=patch_elf.split(' ')
# sp.check_call(patch_elf)
