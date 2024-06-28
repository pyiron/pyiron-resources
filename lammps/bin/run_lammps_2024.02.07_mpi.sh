#!/bin/bash
mpiexec -n ${PYIRON_CORES:=$1} --oversubscribe lmp_mpi -in control.inp;
