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
 Usage: `bash triplets.sh <build dir> <No of opt> <llFile list> <output FileName>`
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
The [`OpenKE`](./OpenKE) directory is a modified version of OpenKE repository (https://github.com/thunlp/OpenKE/tree/OpenKE-PyTorch) with the necessary changes for training seed embedding vocabulary.

Please see [OpenKE/README.md](./OpenKE/README.md) for further information on OpenKE.

#### Requirements
Create `conda` environment and install the packages given in [openKE.yaml](./OpenKE/openKE.yaml)
* `conda create -f ./OpenKE/openKE.yaml`
* `conda activate openKE`

#### Preprocessing the triplets
We preprocess the generated triplets from the [previous step](#step-2-generating-triplets) in a form suitable for training TransE.
* `cd OpenKE`
* `python preprocess.py --tripletFile=<tripletsFilePath>`
    * `--tripletFile` points to the location of the `outputFileName` generated in the [previous step](#step-2-generating-triplets)
    * The processed files `entity2id.txt`, `train2id.txt` and `relation2id.txt` will be generated in the same directory as that of `tripletsFilePath`.
#### Training TransE to generate embeddings
Run  `python generate_embedding_ray.py`
**Possible Arguments:**
All the arguments have default values unless provided:
-  `--index_dir`: Specifies the directory containing the processed files generated from preprocessing the triplets.
-  `--epoch`: Sets the number of epochs. Default is `1000`.
-  `--is_analogy`: Boolean flag to report analogy scores, calculated every 10 epochs using analogies.txt. Default is `False`.
-  `--link_pred`: Boolean flag to report link prediction scores. Requires testing files (`test2id.txt`,` valid2id.txt`) in the ``--index_dir`. Link prediction scores include hit@1, hit@3, hit@10, mean rank (MR), and mean reciprocal rank (MRR). Default is `False`.
-  `--nbatches`: Specifies the batch size. Default is `100`.
-  `--margin`: Specifies the margin size for training. Default is `1.0`.
##### Example Command
To train a model with analogy scoring enabled and a batch size of 200, you can run:
```
python generate_embedding_ray.py --index_dir "../seed_embeddings/preprocessed/" --epoch 1500 --use_gpu true
```
##### TensorBoard Tracking
Once training begins, you can monitor the progress using TensorBoard by running the following command:
```
tensorboard --logdir=~/ray_results

```
##### ASHA Scheduler for Hyperparameter Optimization
We employ the [ASHA Scheduler](https://docs.ray.io/en/latest/tune/api/doc/ray.tune.schedulers.AsyncHyperBandScheduler.html#ray.tune.schedulers.AsyncHyperBandScheduler) to efficiently optimize hyperparameters and terminate suboptimal trials. This scheduler tracks key metrics, which are determined by the following conditions:

- If `--is_analogy` is set to `True`, the AnalogyScore will be the key metric.
- If `--link_pred` is set to `True`, the hit@1 will be the key metric.
- If neither flag is set, the default loss will be used as the key metric.
#### Results
Once the training completes, the best model will be saved in the specified `index_dir` with the filename format:
```
seedEmbedding_{}E_{}D_{}batches_{}margin.ckpt

```
In addition, the entity embeddings will be stored in the `index_dir/embeddings` subdirectory in the following format:
```
embeddings/seedEmbedding_{}E_{}D_{}batches_{}margin.txt

```
