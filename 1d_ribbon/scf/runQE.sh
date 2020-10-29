#!/bin/bash

#SBATCH -J QE_benz
#SBATCH -N 1
#SBATCH -n 32

NPROC=$SLURM_NPROCS

module load qe/6.5

mpirun -np $NPROC pw.x < infinit.1_scf.in > infinit.1_scf.out
