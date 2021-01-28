# Pretrained Embeddings
If you do not want to train the model to generate seed embeddings, and want to use the pretrained vocabulary, please use the vocabulary given [here](../vocabulary) and skip the following.

# Generation of Seed Embedding Vocabulary
This directory helps in generating seed embedding vocabulary in 3 steps.
1. [Building ir2vec](#step-1-building-ir2vec)
2. [Generating Triplets](#step-2-generating-triplets)
3. [Training TransE to generate seed embedding vocabulary](#step-3-training-transe-to-generate-seed-embedding-vocabulary)

## Step 1: Building `ir2vec`
If you have not done `make`, follow the following steps to build `ir2vec` binary.
* Go to the `build` directory (`cd ../build`)
* `make`

## Step 2: Generating Triplets
#### Steps to collect the triplets
 Run `triplets.sh` script with the required parameters
`bash triplets.sh <buildDir> <numOpt> <llFileList> <outputFileName>`
* `buildDir` points to the path of IR2Vec's build folder
* `numOpt` is an integer between `1` and `6`
    * Determines number of optimization sequences to apply on each file.
    * Optimization sequence can be one of the standard sequences `O[0-3sz]` selected at random
* `llFileList` is a file containing the path of all the ll files. Use `find <ll_dir> -type f > files_path.txt`
* `outputFileName` is the file where the triplets would be written
    * New file would be created if the file with given name *does not* exist.
    * If file *exists* with the given name, the triplets would be **appended** on to the same file.

Example Usage:
> bash triplets.sh ../build 2 files_path.txt triplets.txt

#### Files used to generate Seed Embedding Vocabulary
We generated ll files from `Boost` libraries and `spec cpu 2017` benchmarks to generate triplets.

Dataset | Source
------------ | -------------
Boost | https://www.boost.org/
SPEC17 CPU | https://www.spec.org/cpu2017/

## Step 3: Training TransE to generate seed embedding vocabulary
The [`OpenKE`](./OpenKE) directory is a modified version of OpenKE repository (https://github.com/thunlp/OpenKE/tree/OpenKE-Tensorflow1.0) with the necessary changes for training seed embedding vocabulary.

Please see [OpenKE/README.md](./OpenKE/README.md) for further information on OpenKE.

#### Requirements
Create `conda` environment and install the packages given in [requirements.txt](./OpenKE/requirements.txt)
* `conda create --name openKE --file ./OpenKE/requirements.txt`
* `conda activate openKE`

#### Preprocessing the triplets
We preprocess the generated triplets from the [previous step](#step-2-generating-triplets) in a form suitable for training TransE.
* `cd OpenKE`
* `python preprocess.py --tripletFile=<tripletsFilePath>`
    * `--tripletFile` points to the location of the `outputFileName` generated in the [previous step](#step-2-generating-triplets)
    * The processed files `entity2id.txt`, `train2id.txt` and `relation2id.txt` will be generated in the same directory as that of `tripletsFilePath`.

#### Training TransE to generate embeddings
Run  `python generate_embedding.py --index_dir=<Path of the directory containing the processed files>`
* `--index_dir` points to the directory containing the processed files generated on preprocessing the triplets.

The seed embedding vocabulary will be generated inside the same directory.
