#!/bin/bash

echo -n "Enter the filename: "
read filename

# Check if file exists
if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi

lines=$(wc -l < "$filename") # -l for lines,
words=$(wc -w < "$filename") # -w for words,
chars=$(wc -m < "$filename") # -m for characters.

echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $chars"
