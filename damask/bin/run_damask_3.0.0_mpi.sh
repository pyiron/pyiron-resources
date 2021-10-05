#!/bin/bash
mpiexec -n $1 DAMASK_grid -l loading.yaml -g damask.vti
