#!/bin/bash

#SBATCH -J QE_benz
#SBATCH -N 1
#SBATCH -n 8

NPROC=$SLURM_NPROCS

module load qe/6.5

mpirun -np $NPROC pw.x < c_scf.in > c_scf.out
