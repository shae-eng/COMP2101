#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number
read -p "Input1? " Num1
read -p "Input2? " Num2
sum=$((Num1 + Num2))
sub=$((Num1 - Num2))
dividend=$((Num1 / Num2))
multiply=$((Num1 * Num2))
remainder=$((Num1 % Num2))
power=$((Num1**Num2))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $Num1/$Num2}")

cat <<EOF
$Num1 plus $Num2 is $sum
$Num1 divided by $Num2 gives $dividend with reminder of $remainder
  - More precisely, dividend is $fpdividend
$Num1 multiply by $Num2 is $multiply
$Num1 subtracting by $Num2 is $sub
Displaying the $Num1 raised to the power of the $Num2 is $power
EOF
