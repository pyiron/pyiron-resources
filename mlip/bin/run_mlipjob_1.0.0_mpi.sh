#!/bin/bash
mpiexec -n ${PYIRON_CORES:=$1} mlp run mlip.ini --filename=structure.cfg
