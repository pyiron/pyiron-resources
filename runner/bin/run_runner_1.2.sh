#!/bin/sh
MODE=$(awk '$1 == "runner_mode"{print $2}' input.nn)
RuNNer.serial.x > mode${MODE}.out


