#!/bin/bash

#SBATCH -J QE_benz
#SBATCH -n 20
##SBATCH --mail-user=rzhang92@binghamton.edu
##SBATCH --mail-type=begin
##SBATCH --mail-type=end

NPROC=$SLURM_NPROCS
module load qe/6.5
mpirun -np $NPROC pw.x < benzene.in > benzene.out
