#!/bin/bash

echo -n "Enter the lower boundary: "
read low
echo -n "Enter the upper boundary: "
read up

# Initialize first two Fibonacci numbers
a=0
b=1

# Print Fibonacci numbers within the given range
while [ $a -le $up ]
do
  if [ $a -ge $low ]; then
    echo -n "$a  "
  fi
  fn=$((a + b))
  a=$b
  b=$fn
done

echo
