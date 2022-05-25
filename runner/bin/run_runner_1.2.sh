#!/bin/bash
mode=$(awk '/runner_mode/{print $2}'  input.nn)
RuNNer.serial.x | tee mode${mode}.out
