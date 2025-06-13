#!/bin/bash

# Compile the Verilog files
iverilog -o jk_sim jk_ff.v jk_ff_tb.v

# Check for successful compilation
if [ $? -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
fi

# Run the simulation
vvp jk_sim
