#!/bin/bash
export MLP_COMMAND_PARALLEL="mpiexec -n ${PYIRON_CORES:=$1} mlp"
export MLP_COMMAND_SERIAL="mlp"

chmod +x mlip.sh
./mlip.sh $1
