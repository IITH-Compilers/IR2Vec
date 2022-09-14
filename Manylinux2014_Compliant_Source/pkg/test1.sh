export LIBRARY_PATH=/home/shikhar_jain/to_github/IR2Vec_Python_Package/pkg:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/shikhar_jain/to_github/IR2Vec_Python_Package/pkg:$LD_LIBRARY_PATH

if [ -d "/home/shikhar_jain/ir2vec_pkg/pkg/build" ]; then
	rm -rf ./build

fi

if [ -d "/home/shikhar_jain/ir2vec_pkg/pkg/IR2Vec_pkg.egg-info" ]; then
	rm -rf ./IR2Vec_pkg.egg-info

fi

pip install -v -e ./
python3 ../test1.py
