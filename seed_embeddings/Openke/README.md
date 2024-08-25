# OpenKE
An Open-source Framework for Knowledge Embedding.

More information is available on our website
[http://openke.thunlp.org/](http://openke.thunlp.org/)

If you use the code, please cite the following [paper](http://aclweb.org/anthology/D18-2024):

```
 @inproceedings{han2018openke,
   title={{OpenKE}: An Open Toolkit for Knowledge Embedding},
   author={Han, Xu and Cao, Shulin and Lv Xin and Lin, Yankai and Liu, Zhiyuan and Sun, Maosong and Li, Juanzi},
   booktitle={Proceedings of EMNLP},
   year={2018}
 }
```


## Overview

OpenKE is an efficient implementation based on PyTorch for knowledge embedding. We use C++ to implement some underlying operations such as data preprocessing and negative sampling. For each specific model, it is implemented by PyTorch with Python interfaces so that there is a convenient platform to run models on GPUs. OpenKE contains 4 repositories:

[OpenKE-PyTorch](https://github.com/thunlp/OpenKE/tree/OpenKE-PyTorch): the repository based on PyTorch, which provides the optimized and stable framework for knowledge graph embedding models.

<a href="https://github.com/thunlp/OpenKE/tree/OpenKE-Tensorflow1.0"> OpenKE-Tensorflow1.0</a>: OpenKE implemented with TensorFlow, also providing the optimized and stable framework for knowledge graph embedding models.

<a href="https://github.com/thunlp/TensorFlow-TransX"> TensorFlow-TransX</a>: light and simple version of OpenKE based on TensorFlow, including TransE, TransH, TransR and TransD. 

<a href="https://github.com/thunlp/Fast-TransX"> Fast-TransX</a>: efficient lightweight C++ inferences for TransE and its extended models utilizing the framework of OpenKE, including TransH, TransR, TransD, TranSparse and PTransE. 


## Installation


1. Install [PyTorch](https://pytorch.org/get-started/locally/)

2. Clone the OpenKE-PyTorch branch:
```bash
git clone -b OpenKE-PyTorch https://github.com/thunlp/OpenKE --depth 1
cd OpenKE
cd openke
```
3. Compile C++ files
```bash
bash make.sh
```
## Data

* For training, datasets contain three files:

  train2id.txt: training file, the first line is the number of triples for training. Then the following lines are all in the format ***(e1, e2, rel)*** which indicates there is a relation ***rel*** between ***e1*** and ***e2*** .
  **Note that train2id.txt contains ids from entitiy2id.txt and relation2id.txt instead of the names of the entities and relations. If you use your own datasets, please check the format of your training file. Files in the wrong format may cause segmentation fault.**

  entity2id.txt: all entities and corresponding ids, one per line. The first line is the number of entities.

  relation2id.txt: all relations and corresponding ids, one per line. The first line is the number of relations.

* For testing, datasets contain additional two files (totally five files):

  test2id.txt: testing file, the first line is the number of triples for testing. Then the following lines are all in the format ***(e1, e2, rel)*** .

  valid2id.txt: validating file, the first line is the number of triples for validating. Then the following lines are all in the format ***(e1, e2, rel)*** .

  type_constrain.txt: type constraining file, the first line is the number of relations. Then the following lines are type constraints for each relation. For example, the relation with id 1200 has 4 types of head entities, which are 3123, 1034, 58 and 5733. The relation with id 1200 has 4 types of tail entities, which are 12123, 4388, 11087 and 11088. You can get this file through **n-n.py** in folder benchmarks/FB15K .
