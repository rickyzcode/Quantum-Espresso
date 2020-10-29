#!/bin/bash

#SBATCH -J QE_benz
#SBATCH -N 1
#SBATCH -n 8

NPROC=$SLURM_NPROCS

module load qe/6.5

#########################################################################
### This shows all the Quantum Espresso commands needed for the ce
### chain of benzene "cene" system, which covers band structure,
### DOS, and PDOS calculations.
###
### You should not run all commands at once! Instead do them sequentially
### by un-commenting one line at a time (re-comment the previous one when
### you uncomment the next one.
#########################################################################
mpirun -np $NPROC pw.x < c.in > c.out
#mpirun -np $NPROC pw.x < c_scf.in > c_scf.out
#mpirun -np $NPROC pw.x < c.3_bands.in > c.3_bands.out
#mpirun -np $NPROC bands.x < c.4_bands_pp.in > c.4_bands_pp.out
#plotband.x < c.5_plotband.in > c.5_plotband.out
#mpirun -np $NPROC pw.x < c.6_nscf.in > c.6_nscf.out
#mpirun -np $NPROC dos.x < c.7_dos.in > c.7_dos.out
#mpirun -np $NPROC projwfc.x <c.8_pdos.in > c.8_pdos.out
#########################################################################
### This part is used to sum individual PDOS. They can all be run together
### i.e., uncomment all and run at once.
#########################################################################
#sumpdos.x c.pdos.dat.pdos_atm#*\(H\)* > c_H_tot.dat
#sumpdos.x c.pdos.dat.pdos_atm#*\(C\)* > c_C_tot.dat
#sumpdos.x c.pdos.dat.pdos_atm#*\(C\)*\(s\) > c_C_s.dat
#sumpdos.x c.pdos.dat.pdos_atm#*\(C\)*\(p\) > c_C_p.dat
