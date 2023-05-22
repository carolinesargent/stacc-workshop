#!/bin/bash
#SBATCH -J MP2
#SBATCH -N 1 
#SBATCH -n 1
#SBATCH -t 30
#SBATCH -q pace-ice


export OMP_NUM_THREADS=1
export MKL_NUM_THREADS=1
cd $SLURM_SUBMIT_DIR
myscratch=${TMPDIR}

unset PSIDATADIR
unset PSI4DATADIR
PYTHONPATH=${PYTHONPATH:-""}
export PSI_SCRATCH=${TMPDIR}
module load psi4
srun psi4 -i mp2.in -o mp2.out -n 1

