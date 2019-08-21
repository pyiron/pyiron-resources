#!/bin/bash
mkfifo control
mkfifo response
while  [[ ! -p control ]] || [[ ! -p response ]]; do sleep 1 ; done
exec sxextopt &> sxextopt.log
