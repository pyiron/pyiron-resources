#!/bin/bash
mode=$(awk '/runner_mode/{print $2}'  input.nn)
mpiexec -n $1 RuNNer.serial.x | tee mode${mode}.out
