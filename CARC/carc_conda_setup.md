```
mkdir -p /models/toxic
mkdir logs
```

```
module load conda
conda env create python=3.8 -n marco
eval "$(conda shell.bash hook)"

conda activate marco

pip install -r requirements.txt
conda install pytorch pytorch-cuda=12.1 -c pytorch -c nvidia
```