#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --time=07:00:00
#SBATCH --account=jonmay_231
#SBATCH --output=rewrites_output.out

# setup
module purge
module load conda
eval "$(conda shell.bash hook)"
conda activate marco

# run
cd ..
python3 rewrite_together.py --data_path datasets/sbf/sbfdev.csv --output_dir datasets/rewrites/rewritten_sbfdev/ --no_check_cost
python3 rewrite_together.py --data_path datasets/sbf/sbftst.csv --output_dir datasets/rewrites/rewritten_sbftst/ --no_check_cost
python3 rewrite_together.py --data_path datasets/dynabench/db_dev.csv --output_dir datasets/rewrites/rewritten_db_dev/ --no_check_cost
python3 rewrite_together.py --data_path datasets/dynabench/db_test.csv --output_dir datasets/rewrites/rewritten_db_test/ --no_check_cost
python3 rewrite_together.py --data_path datasets/microagressions/val.csv --output_dir datasets/rewrites/rewritten_microagressions_val/ --no_check_cost
python3 rewrite_together.py --data_path datasets/microagressions/test.csv --output_dir datasets/rewrites/rewritten_microagressions_test/ --no_check_cost
