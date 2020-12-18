#!/bin/bash

#SBATCH -J AIMD
#SBATCH -N 1
#SBATCH -n 2

NPROC=$SLURM_NPROCS

module load qe/6.5

#mpirun -np $NPROC pw.x < WS2.in > WS2.out
#mpirun -np $NPROC pw.x < WS2_scf.in > WS2_scf.out
#mpirun -np $NPROC pw.x < WS2.3_bands.in > WS2.3_bands.out
#mpirun -np $NPROC bands.x < WS2.4_bands_pp.in > WS2.4_bands_pp.out
#plotband.x < infinit.5_plotband.in > infinit.5_plotband.out
#mpirun -np $NPROC pw.x < infinit.6_nscf.in > infinit.6_nscf.out
#mpirun -np $NPROC dos.x < infinit.7_dos.in > infinit.7_dos.out
#mpirun -np $NPROC projwfc.x <infinit.8_pdos.in > infinit.8_pdos.out
#########################################################################
### This part is used to sum individual PDOS. They can all be run together
### i.e., uncomment all and run at once.
#########################################################################
sumpdos.x ws2.pdos.dat.pdos_atm#*\(W\)* > ws2_W_tot.dat
sumpdos.x ws2.pdos.dat.pdos_atm#*\(S\)* > ws2_S_tot.dat
sumpdos.x ws2.pdos.dat.pdos_atm#*\(W\)*\(s\) > ws2_W_s.dat
sumpdos.x ws2.pdos.dat.pdos_atm#*\(W\)*\(p\) > ws2_W_p.dat
sumpdos.x ws2.pdos.dat.pdos_atm#*\(W\)*\(d\) > ws2_W_d.dat
sumpdos.x ws2.pdos.dat.pdos_atm#*\(S\)*\(s\) > ws2_S_s.dat
sumpdos.x ws2.pdos.dat.pdos_atm#*\(S\)*\(p\) > ws2_S_p.dat
