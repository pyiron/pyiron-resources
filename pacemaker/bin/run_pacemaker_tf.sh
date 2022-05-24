#!/bin/bash

# source $HOME/.bashrc
# conda activate YOUR_PACEMAKER_CONDA_ENVIRONMENT
pacemaker input.yaml -l log.txt
pace_yaml2yace output_potential.yaml
