import json
import os


def write_input(working_directory, input_dict):
    # your code goes here

    # json example
    with open(os.path.join(working_directory, "input.txt"), "w") as f:
        json.dump(input_dict, f)


def collect_output(working_directory):
    # your code goes here

    # json example
    with open(os.path.join(working_directory, "output.txt"), "r") as f:
        return json.load(f)
