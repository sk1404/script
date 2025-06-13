#!/bin/bash

# Function to convert decimal digit to 4-bit binary (BCD)
dec_to_bcd() {
  printf "%04d" "$(echo "obase=2; $1" | bc)"
}

# Read 8-bit binary input
echo "Enter an 8-bit binary number (e.g. 11001010):"
read bin

# Validate input length and characters
if ! [[ "$bin" =~ ^[01]{8}$ ]]; then
  echo "Error: Please enter exactly 8 bits (0 or 1)."
  exit 1
fi

# Convert binary to decimal
decimal=$((2#$bin))

# Convert decimal to BCD by converting each decimal digit to 4-bit binary
bcd=""
for (( i=0; i<${#decimal}; i++ )); do
  digit=${decimal:i:1}
  bcd+=`dec_to_bcd $digit`
done

echo "Binary input: $bin"
echo "Decimal equivalent: $decimal"
echo "BCD representation: $bcd"
