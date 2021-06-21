#!/bin/bash
mpiexec -n $1 DAMASK_grid -l tensionX.load -g damask.vtr
