#!/bin/bash

#SBATCH -J AIMD
#SBATCH -N 1
#SBATCH -n 2

NPROC=$SLURM_NPROCS

module load qe/6.5

mpirun -np $NPROC pw.x < WS2.in > WS2.out
