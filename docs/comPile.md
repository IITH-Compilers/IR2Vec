The following guide details the steps followed in training IR2Vec with the ComPile dataset.

# # Generating .ll files for re-training.
   - The git repo `IR2Vec-Version-Upgrade-Checks` has the required scripts to be run for this process.
   - The repo is available [here](https://github.com/IITH-Compilers/IR2Vec-Version-Upgrade-Checks/)
   - Our relevant scripts and files will be present in the folder `ComPile`.
      - `ComPile/collect_dataset_info.py` - This script will generate the list of all the unique C/C++ files in the dataset.
      - `ComPile/save_ir.py` - This script will download the bitcode files for all the C/C++ files in the dataset, generate the IR files and save them in the specified location, following which it will save the file_names to `ir_paths.txt` file.
         - Note: Bitcode files are generated for particular versions of llvm/clang. When generating the IR files, we need to make sure that the version of llvm/clang used to generate the IR files is the same as the one used to generate the bitcode files. Otherwise, the disassembly is likely to fail, since the LLVM IR/Bitcode specs are not backward compatible. To this end, make sure the `llvm-dis` command is run with the appropriate version.
      - `ComPile/prep_ir_list.py` - This script will take the `ir_paths.txt` file and generate the list of paths of all the IR files in the downloaded dataset.

- Once we have generated the list of all the `.ll` file paths, we go to the seed_embedding folder in the main IR2Vec repository. Here, our process will have to involve the following tasks.
   - Generating Training Triplets
   - Preprocessing the data
   - Training on the data and generating a final embedding file.
   - Using the embedding file to generate the test oracle.
   - Running the testing to verify the validity of the entire upgrade process.

# Generating Training Triplets
   - Run the `triplets.sh` bash file with relevant changes to update the llvm version.
   - Instructions to run the same are available at `seed_embeddings/README.md`.
   - Here, a slight change is required. Since the dataset is large, instead of creating our temp files at `/tmp`, we will specify a custom path to store the temp files.
   - For assisting this change, and running the script, we have a `gen_triplets.sh` helper script available in the `ComPile` folder. You need to copy the `gen_triplets.sh` script to the `seed_embeddings` folder, make relevant changes to the script and run it.

# Breaking triplets.txt
   - The generated `triplets.txt` file will be extremely large in size. So much so that attempting to open it, or directly read from it, is likely to cause an overshoot of the available RAM space, and cause a system crash.
   - To mitigate this, we have developed the following system. Go to the location where your `triplets.txt` is stored. Create a new folder, say `split_files`
   - We use the command `split -C 500M triplets.txt split_files/triplets_part -d -a 2 --numeric-suffixes=11 --additional-suffix=.txt`
   - This command will split the `triplets.txt` file into multiple files, each 500MB in size, and store them in the folder, labelled by number.

# Preprocesing the data
   - In our previous version, we were using the `openKE` folder, where the script `IR2Vec/seed_embeddings/OpenKE/preprocess.py` was being used to preprocess the data from `triplets.txt`.
   - A new script has been provided at `IR2Vec/seed_embeddings/OpenKE/preprocess_hybrid.py`. This script takes as input, the folder of broken up triplets file, as created in the previous step. The script takes in the folder, and iterates over all the files in the folder, to generate the Entities, Relation and the Training sets, in a safe manner, so as to not cause any RAM overshoots
   - This script can be used as it-is with the previous approach as well. Previously, a single `triplets.txt` file was sufficient to generate the requisite preprocessed information. To run with a single triplets file, just place it in a folder, and pass the folder path to this script.

# Train IDs
   - Similar to `triplets.txt`, the file `train2id.txt` is also going to be an extremely large file, and attempting to open it will likely overshoot the RAM and cause a system crash.
   - To avoid this, the following workaround is deployed.
   - Studying the training code will show us that the `train2id.txt` file is read, and an attempt is made to extract all the unique train sets from it. This, when run with a large `train2id.txt` , is going to be a likely site of RAM overshoot and a subsequent system crash.
   - To solve this, a script, `ComPile/get_uniq_train.sh` is supplied. The user needs to copy this to the site of the `train2id.txt`, and run with the appropriate path changes. This will give an output of much reduced size, with unique train sets.
   - This will can then straight away be used with the regular training path.

Once this step is reached, the user can then resume training, from the original path [here](https://github.com/IITH-Compilers/IR2Vec/wiki/version_upgrade_process#training). A helper script, `ComPile/run_training_ray.sh` has been provided to help the user provide log paths, and specify properly formatted parameters and run the training accordingly.
