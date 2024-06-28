#!/bin/bash
mkfifo sxctrl || true
mkfifo sxres || true
export SX_EXT_CTRL=sxctrl
export SX_EXT_RES=sxres

if [ ! -z $2 ]; then
	SX_THREADS=$2
	NCORES=$(echo "$1/$SX_THREADS" | bc)
	export SX_THREADS
elif [ ! -z $PYIRON_THREADS ]; then
	SX_THREADS=$PYIRON_THREADS
	NCORES=$(echo "$PYIRON_CORES/$SX_THREADS" | bc)
        export SX_THREADS
else
	NCORES="${PYIRON_CORES:=$1}"
fi
mpiexec -n $NCORES sphinx --opts > sphinx.log
mpiexec -n $NCORES sphinx >> sphinx.log

if test -f "sxres"; then rm "sxres"; fi
if test -f "sxctrl"; then rm "sxctrl"; fi
