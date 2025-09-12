#!/bin/bash

# Read the word to search for
echo -n "Enter the word to find frequency: "
read word

# Count occurrences of the word in the file "f1"
# -o outputs each match on a separate line
# -w matches whole words only (to avoid partial matches)
count=$(grep -wo "$word" f1 | wc -l)

echo "The word '$word' occurred $count times in the file."
