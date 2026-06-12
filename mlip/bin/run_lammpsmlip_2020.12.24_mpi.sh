#!/bin/bash
if [ -f lmp.in ]; then
    INPUT_FILE=lmp.in
else
    INPUT_FILE=control.inp
fi
mpiexec -n ${PYIRON_CORES:=$1} lmp_mpi -in ${INPUT_FILE}
