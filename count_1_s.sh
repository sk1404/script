#!/bin/bash
# decimal_ones_count.sh - Convert decimal to binary and count number of 1s

if [ $# -ne 1 ]; then
  echo "Usage: $0 <decimal-number>"
  exit 1
fi

dec=$1

# Validate input: only non-negative integers
if ! [[ "$dec" =~ ^[0-9]+$ ]]; then
  echo "Error: Input must be a non-negative integer."
  exit 1
fi

# Convert decimal to binary using bc
binary=$(echo "obase=2; $dec" | bc)

# Count number of 1s in binary string
ones_count=$(echo -n "$binary" | grep -o "1" | wc -l)

echo "Decimal: $dec"
echo "Binary: $binary"
echo "Number of 1's: $ones_count"
