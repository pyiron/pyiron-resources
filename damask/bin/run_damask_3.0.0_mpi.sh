#!/bin/bash
export OMP_NUM_THREADS=$1
DAMASK_grid -m material.yaml -l loading.yaml -g damask.vti
