#!/bin/sh
MODE=$(awk '$1 == "runner_mode"{print $2; exit}' input.nn)
mpiexec -n $1 RuNNer.serial.x | tee mode${MODE}.out
