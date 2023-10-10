```
mkdir -p models/toxic
mkdir logs
```

```
module load conda
conda create --name marco python=3.10
eval "$(conda shell.bash hook)"

conda activate marco

pip install -r requirements.txt
conda install pytorch pytorch-cuda=11.8 -c pytorch -c nvidia
```