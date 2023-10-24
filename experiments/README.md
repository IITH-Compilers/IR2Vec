# Experiments

## Note
<code> The results mentioned in the experiment's scripts/the published version are not updated for this branch. The experimental results for this branch would be different when compared to the published version. For comparison, use the release corresponding to [v0.1.0](https://github.com/IITH-Compilers/IR2Vec/releases/tag/v0.1.0). </code>

## Requirements
* Create a new conda env using the given `exp_requirements.yaml` file
    * `conda env create --file exp_requirements.yaml` for the first time.
    * Use `conda activate IR2Vec` for subsequent uses.

## Heterogeneous Device Mapping
* The aim of this experiment is to map a given kernel to a CPU or GPU
* We use the same dataset described by NCC (see [source code](https://github.com/spcl/ncc), [paper](https://dl.acm.org/doi/10.5555/3327144.3327276))

##### Steps to Run
* To generate embeddings run
    * `bash generate_IR2Vec_embeddings.sh DM SYM` to use Symbolic encodings, or
    * `bash generate_IR2Vec_embeddings.sh DM FA` to use Flow-Aware encodings
* Open the `DevMap.ipynb` file in jupyter notebook and execute it.

##### Directory structure
Following would be the structure of the directory on successful completion of the experiment.
```
Device_Mapping
|-- data
|   |-- kernels_ir
|   |   |-- *.ll
|   |-- prior_art_results
|   |   |-- *.results
|   |-- all.txt
|   |-- cgo17-amd.csv
|   |-- cgo17-nvidia.csv
|-- output
|   |-- embeddings
|   |   |-- Device_Mapping_Symbolic_llvm16.txt
|   |   |-- Device_Mapping_FlowAware_llvm16.txt
|-- DevMap.ipynb
```
## Thread Coarsening
* The aim of this experiment is to predict the optimal thread coarsening factor for a kernel on a GPU
* We use the same [dataset](./Thread_Coarsening/data) described by NCC (see [source code](https://github.com/spcl/ncc), [paper](https://dl.acm.org/doi/10.5555/3327144.3327276))

##### Steps to Run
* To generate embeddings run
    * `bash generate_IR2Vec_embeddings.sh TC SYM` to use Symbolic encodings, or
    * `bash generate_IR2Vec_embeddings.sh TC FA` to use Flow-Aware encodings
* Open the `ThreadCoarsening.ipynb` file in jupyter notebook and execute it.

##### Directory structure
Following would be the structure of the directory on successful completion of the experiment.
```
Thread_Coarsening
|-- data
|   |-- kernels_ir
|   |   |-- *.ll
|   |-- prior_art_results
|   |   |-- *.results
|   |-- all.txt
|   |-- pact-2014-oracles.csv
|   |-- pact-2014-runtimes.csv
|-- output
|   |-- embeddings
|   |   |-- Thread_Coarsening_Symbolic_llvm16.txt
|   |   |-- Thread_Coarsening_FlowAware_llvm16.txt
|-- ThreadCoarsening.ipynb
```
## Out_Of_Vocabulary
* Shows the comparsion of #OOV cases encountered by our work and [NCC](https://dl.acm.org/doi/10.5555/3327144.3327276)
* Experiementation is done on the set of 71 programs given in [src/test-suite/PE-benchmarks](../src/test-suite/PE-benchmarks)
    * These programs are taken from geeksforgeeks.org

## Time Taken
* Shows the time taken to generate Symbolic and Flow-Aware embeddings
* This experiment is also carried out on the same set of 71 programs
