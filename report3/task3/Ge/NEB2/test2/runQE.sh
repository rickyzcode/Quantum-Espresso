#!/bin/bash

#SBATCH -J QE_benz
#SBATCH -N 1
#SBATCH -n 3

NPROC=$SLURM_NPROCS

module load qe/6.5

mpirun -np $NPROC neb.x -inp he_in_ge.in > he_in_ge.out
