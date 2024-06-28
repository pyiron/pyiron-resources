#!/bin/bash
export OMP_NUM_THREADS="${PYIRON_CORES:=$1}"
DAMASK_grid -m material.yaml -l loading.yaml -g damask.vti
