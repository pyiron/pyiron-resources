#!/bin/bash
mkfifo sxctrl
mkfifo sxres
export SX_EXT_CTRL=sxctrl
export SX_EXT_RES=sxres
sphinx --opts > sphinx.log
sphinx >> sphinx.log
rm sxres sxctrl
