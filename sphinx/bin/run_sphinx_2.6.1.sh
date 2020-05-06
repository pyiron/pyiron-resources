#!/bin/bash
mkfifo sxctrl || true
mkfifo sxres || true
export SX_EXT_CTRL=sxctrl
export SX_EXT_RES=sxres
sphinx --opts > sphinx.log
sphinx >> sphinx.log
[ -f sxres ] && rm sxres
[ -f sxctrl ] && rm sxctrl
