#!/bin/bash
mpiexec -n $1 DAMASK_grid -l tensionX.yaml -g damask.vtr
