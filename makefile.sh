#!/bin/bash
a=25
b=45
result=$((a + b))
echo "Addition: $a + $b = $result"                                             



#!/bin/bash
a=100
b=55
result=$((a - b))
echo "Subtraction: $a - $b = $result"                                                                 

#!/bin/bash
a=8
b=5
result=0

for ((i = 0; i < b; i++)); do
  result=$((result + a))
done

echo "Multiplication (Repeated Addition): $a * $b = $result"                                          





#!/bin/bash
a=40
b=5
count=0
temp=$a

while (( temp >= b )); do
  temp=$((temp - b))
  count=$((count + 1))
done

echo "Division (Repeated Subtraction): $a / $b = $count with remainder $temp"                                                 






# Makefile to perform operations using bash scripts

ADD:
	@bash add.sh

SUBTRACT:
	@bash subtract.sh

MULTIPLY:
	@bash multiply.sh

DIVIDE:
	@bash divide.sh


