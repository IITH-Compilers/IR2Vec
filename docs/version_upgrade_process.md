The following guide details the steps followed in upgrading the LLVM version supported by IR2Vec

# Compile the IR2Vec binary
   - Instructions for the same are present [here](https://github.com/IITH-Compilers/IR2Vec/blob/main/README.md)

# Generating .ll files for re-training.
   - The git repo `IR2Vec-Version-Upgrade-Checks` has the required scripts to be run for this process.
   - The repo is available [here](https://github.com/IITH-Compilers/IR2Vec-Version-Upgrade-Checks/)
   - Our relevant scripts and files will be present in the folder `collect_ir`.
      - `collect_ir/spec/get_ll_files_list.py`
      - `collect_ir/boost/get_ll_files_list.py`
      - `collect_ir/spec/get_ll_spec.sh`
   - We use the C++ Library Boost, and the CPU-SPEC source codes to generate training data.
      - Download these source codes.
   - Compile the relevant Boost `.c*` files with the relevant LLVM version.
      - The folder has the script `get_boost_ll.py` for this purpose.
   - CPU/SPEC .c++ files compilation with the relevant LLVM version.
      - For detailed instructions on this step, refer to [here](https://github.com/IITH-Compilers/IR2Vec/wiki/spec_compilation).
- Collect the paths to all these compiled .ll / .o files in a single place using the scripts `collect_ir/spec/get_ll_files_list.py` and `collect_ir/boost/get_ll_files_list.py`.


- Once we have compiled the list of all the `.ll` file paths, we go to the seed_embedding folder in the main IR2Vec repository. Here, our process will have to involve the following tasks.
   - Generating Training Triplets
   - Preprocessing the data
   - Training on the data and generating a final embedding file.
   - Using the embedding file to generate the test oracle.
   - Running the testing to verify the validity of the entire upgrade process.

# Generating Training Triplets
   - Run the `triplets.sh` bash file with relevant changes to update the llvm version. Instructions to run the same are available at `seed_embeddings/README.md`.

# Preprocesing the data
   - In this same README.md file, we also have the instructions to run this next step.
   - The relevant file is present in the `openKE` folder, at `IR2Vec/seed_embeddings/OpenKE/preprocess.py`
   - Once the file has been run, we should have a `preprocessed` folder. Inside this folder, we should have the relevant preprocessed data generated.
   - Go ahead and create an empty `embeddings` folder here. This will be relevant for the next step.

# Training
- The next file to run is the `generate_embeddings_ray.py` file in the `openKE` folder.
   - Use the `openKE.yaml` file to create the conda environment.
   - This environment should have `Ray` and `tensorflow` installed.
   - Modify the `_ray.py` file with relevant training hyperparameters.
   - Run the file using the command `python3 generate_embeddings_ray.py`. This will run the training, generate the best embedding file and record the results.
   - Once we have generated the embeddings files, we have to use the embeddings file to update the `oracle` and get the `test_suite` working.
   - Copy the best embedding file into `seedEmbedding.txt` and move it to the `vocabulary` folder. Remove any prior files present there.

# Generate Test Oracle
   - For this, we now move to the `src` folder. This folder contains the `test-suite` folder as well.
   - Here, two scripts are of importance. `generate_llfiles.sh` and `generateOracle.sh`. Run both of these files with the appropriate version of `llvm`.
      - Modify `CMakeLists.txt` in the `test-suite` folder with the appropriate changes.
      - Similarly, modify the `sanity_check.sh.cmake` file with the appropriate paths for vocabulary, llvm version, etc.

# Verification
   - Go to the `build` folder. Regenerate the contents using the CMAKE call from the build process
   - Run `make check`. This should compile successfully.

# Cosmetics
   - At this point, most of the code works as expected, however, for complete online testing and evaluation, we need to ensure that the appropriate llvm version is used throughout the code.
   - For this, running the command `git grep ..` helps.
   - For eg. Say, if we are changing from `llvm16` to `llvm17`, we can run the following commands to spot any required version changes in the code.
      - `git grep 16`
      - `git grep llvm16`
   - For the complete evaluation, we need to update the docker image as well.
   - The docker images for running the Github tests are available [here](https://github.com/IITH-Compilers/manylinux2014-llvm/tree/main).
   - The instructions to generate a new Docker image for the updated version are available [here](https://github.com/IITH-Compilers/IR2Vec/wiki/docker_update)


# Pushing commits
   - Update `test.yml` in github workflows.
   - Install `pre-commit` in a fresh conda environment.
   - To test locally, run `pre-commit` install, followed by `pre-commit run --all-files`.

Once all this is done, you should be able to push the commits without any test failures.
