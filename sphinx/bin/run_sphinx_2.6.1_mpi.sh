#!/bin/bash
mkfifo sxctrl
mkfifo sxres
export SX_EXT_CTRL=sxctrl
export SX_EXT_RES=sxres

if [ ! -z $2 ]; then
	SX_THREADS=$2
	NCORES=$(echo "$1/$SX_THREADS" | bc)
	export SX_THREADS
else
	NCORES=$1
fi
mpiexec -n $NCORES sphinx --opts > sphinx.log
mpiexec -n $NCORES sphinx >> sphinx.log

rm sxctrl sxres
