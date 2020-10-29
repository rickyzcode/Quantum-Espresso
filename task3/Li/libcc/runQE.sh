#!/bin/bash

#SBATCH -J QE_benz
#SBATCH -N 1
#SBATCH -n 8

NPROC=$SLURM_NPROCS

module load qe/6.5


mpirun pw.x < infinit.1_relax.in > infinit.1_relax.out
sleep 10
mpirun pw.x < infinit.3_bands.in > infinit.3_bands.out
sleep 10
mpirun bands.x < infinit.4_bands_pp.in > infinit.4_bands_pp.out
sleep 10
plotband.x < infinit.5_plotband.in > infinit.5_plotband.out
