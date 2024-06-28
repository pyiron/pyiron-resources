#!/bin/bash
mpiexec -n ${PYIRON_CORES:=$1} vasp_gam
