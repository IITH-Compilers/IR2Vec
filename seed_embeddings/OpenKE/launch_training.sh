#! /bin/bash

python3 generate_embedding_ray.py --is_analogy True --use_gpu True --dim 75 --index_dir "/home/intern23002/iitH/ir2vec/IR2Vec/seed_embeddings/preprocessed" \
	--analogy_file "/home/intern23002/iitH/ir2vec/IR2Vec/seed_embeddings/OpenKE/analogies.txt"
