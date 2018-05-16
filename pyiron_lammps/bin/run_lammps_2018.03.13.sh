#!/bin/bash
if $(command -v $lmp); then 
    lmp -in control.inp; 
elif  $(command -v $lmp_serial); then 
    lmp_serial -in control.inp;
else 
    echo "No Lammps executable found using $0"
fi;
