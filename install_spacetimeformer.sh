# Install instructions from spacetimeformer repo
git clone https://github.com/QData/spacetimeformer.git
cd spacetimeformer
conda create -n spacetimeformer python==3.8
source activate spacetimeformer
pip install -r requirements.txt
pip install -e .
