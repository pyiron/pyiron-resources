#!/bin/bash
mkfifo sxctrl || true
mkfifo sxres || true
export SX_EXT_CTRL=sxctrl
export SX_EXT_RES=sxres
sphinx --opts > sphinx.log
sphinx >> sphinx.log
if test -f "sxres"; then rm "sxres"; fi
if test -f "sxctrl"; then rm "sxctrl"; fi
