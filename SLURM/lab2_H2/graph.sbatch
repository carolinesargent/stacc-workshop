#!/bin/bash
#SBATCH -J UHF
#SBATCH -N 1 
#SBATCH -n 1
#SBATCH -t 30
#SBATCH -q pace-ice

cd $SLURM_SUBMIT_DIR
module load anaconda3/2022.05
srun python graph.py

