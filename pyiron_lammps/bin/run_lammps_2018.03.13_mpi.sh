#!/bin/bash
if $(command -v $lmp); then 
    mpiexec -n $1 lmp -in control.inp; 
elif  $(command -v $lmp_mpi); then 
    mpiexec -n $1 lmp_mpi -in control.inp;
else 
    echo "No Lammps executable found using $0"
fi;
