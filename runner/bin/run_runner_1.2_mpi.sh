#!/bin/bash
mpiexec -n $1 RuNNer.mpi.x
sed -i 's/runner_mode 1/runner_mode 2/g' input.nn
RuNNer.serial.x
sed -i 's/runner_mode 2/runner_mode 3/g' input.nn
OLD=$(ls optweights.*.out)
TMP=${OLD/opt/}
mv $OLD ${TMP/out/data}
