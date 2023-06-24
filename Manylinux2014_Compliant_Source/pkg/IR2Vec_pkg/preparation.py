import subprocess as sp
import os
import sys
import pathlib as pl

install_loc = pl.Path(__file__).parent.resolve()
install_loc_pkg = str(install_loc)
