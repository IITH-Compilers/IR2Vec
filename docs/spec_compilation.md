# README.md

- Here, we describe the process to follow to generate ll files from the `cpu-spec-2006` and the `cpu-spec-2017` folders.

## CPU 2006

- Run installation using the command `bash install.sh`.
- Create config file, using `config_clang14_cpu2006.cfg`. 
- Change the following compilation parameters to reflect the appropriate llvm version.
  - `CC`, `CXX`
- To `COPTIMIZE`, and `CXXOPTIMIZE`, also add `-S -emit-llvm -Xclang` to make sure compilation stops appropriately without errors.
- Copy the config file to the `config` folder in the `cpu2006install` folder.
- Source the install. `source shrc`
- Run the command
  - `runspec --config config_clang16_cpu2006.cfg  --tune=base  --action=build --rebuild --define build_ncpus=1 int fp`
- Once the `.o` files are generated, run the script (`get_ll_spec.sh`) with appropriate changes to get these files together in the repo.

## CPU 2017

- Run installation.
- Create config file, using `config_clang14_cpu2017.cfg`.
- Change the following compilation parameters to reflect the appropriate llvm version.
  - `CC`, `CXX`, `CLD`, `FLD`
- To `COPTIMIZE`, and `CXXOPTIMIZE`, also add `-S -emit-llvm -Xclang` to make sure compilation stops appropriately without errors.
- Copy the config file to the `config` folder in the `cpu2017install` folder.
- Source the install. `source shrc`
- Run the command
  - `runcpu --config config_clang16_cpu2017.cfg --tune=base --action=build --rebuild --define build_ncpus=1 intrate fprate intspeed fpspeed`

- Once the `.o` files are generated, run the script ([`get_ll_spec.sh`](https://github.com/IITH-Compilers/IR2Vec-Version-Upgrade-Checks/blob/main/collect_ir/spec/get_ll_SPEC.sh)) with appropriate changes to get these files together in the repo.
- Once the ll, .o files are generated, collect them in an `ll_files.txt` file and proceed with generating the triplets.
