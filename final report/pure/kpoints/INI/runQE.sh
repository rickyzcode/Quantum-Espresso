#!/bin/bash

#SBATCH -J WS2
#SBATCH -N 1
#SBATCH -n 2

NPROC=$SLURM_NPROCS

module load qe/6.5

#mpirun -np $NPROC pw.x < WS2.in > WS2.out
mpirun -np $NPROC pw.x < WS2_scf.in > WS2_scf.out
#mpirun -np $NPROC pw.x < infinit.3_bands.in > infinit.3_bands.out
#mpirun -np $NPROC bands.x < infinit.4_bands_pp.in > infinit.4_bands_pp.out
#plotband.x < infinit.5_plotband.in > infinit.5_plotband.out
#mpirun -np $NPROC pw.x < infinit.6_nscf.in > infinit.6_nscf.out
#mpirun -np $NPROC dos.x < infinit.7_dos.in > infinit.7_dos.out
#mpirun -np $NPROC projwfc.x <infinit.8_pdos.in > infinit.8_pdos.out
#########################################################################
### This part is used to sum individual PDOS. They can all be run together
### i.e., uncomment all and run at once.
#########################################################################
#sumpdos.x infinit.pdos.dat.pdos_atm#*\(H\)* > infinit_H_tot.dat
#sumpdos.x infinit.pdos.dat.pdos_atm#*\(C\)* > infinit_C_tot.dat
#sumpdos.x infinit.pdos.dat.pdos_atm#*\(C\)*\(s\) > infinit_C_s.dat
#sumpdos.x infinit.pdos.dat.pdos_atm#*\(C\)*\(p\) > infinit_C_p.dat
