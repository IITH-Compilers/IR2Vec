import os

config.my_src_root = r'/home/cs23btech11001/IR2Vec'
config.my_obj_root = r'/home/cs23btech11001/IR2Vec/new-build-19'

lit_config.load_config(
        config, os.path.join(config.my_src_root, "src/test-suite/lit.cfg.py"))
