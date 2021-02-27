#!/bin/bash
mpiexec -n $1 RuNNer.mpi.x
sed -i 's/runner_mode 1/runner_mode 2/g' input.nn
RuNNer.serial.x
