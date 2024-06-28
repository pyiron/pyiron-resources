#!/bin/bash
mpiexec -n ${PYIRON_CORES:=1} lmp_mpi -in control.inp
