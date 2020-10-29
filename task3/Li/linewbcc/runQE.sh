#!/bin/bash

#SBATCH -J band_str

#SBATCH -n 16

NPROC=$SLURM_NPROCS

module load qe/6.5


#mpirun -np $NPROC pw.x < infinit.1_relax.in > infinit.1_relax.out
#mpirun -np $NPROC pw.x < infinit.2_scf.in > infinit.2_scf.out
#mpirun -np $NPROC pw.x < infinit.3_bands.in > infinit.3_bands.out
#mpirun -np $NPROC bands.x < infinit.4_bands_pp.in > infinit.4_bands_pp.out
plotband.x < infinit.5_plotband.in > infinit.5_plotband.out
