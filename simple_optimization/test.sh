#!/bin/bash
#PBS -N Ti_O2
#PBS -l nodes=1:ppn=16
cd $PBS_O_WORKDIR

source /etc/profile.d/intel.sh

export CUDA_VISIBLE_DEVICES=0

mpirun -np 16 /opt/vasp5/vasp.5.4.4/bin/vasp_std > output
