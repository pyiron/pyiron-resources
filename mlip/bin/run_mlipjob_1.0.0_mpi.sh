#!/bin/bash
mpiexec -n $1 mlp run mlip.ini --filename=structure.cfg
