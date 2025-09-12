#!/bin/bash
# Input array size
echo -n "Enter the number of elements: "
read n

# Input array elements
echo "Enter $n elements:"
for ((i=0; i<n; i++)); do
    echo -n "A[$i]= "
    read arr[i]
done

# Input key to search
echo -n "Enter the key value: "
read key

# Linear search logic
found=0
for ((i=0; i<n; i++)); do
    if [ "${arr[i]}" -eq "$key" ]; then
        found=1
        break
    fi
done

# Result
if [ $found -eq 1 ]; then
    echo "$key is found at position $i"
else
    echo "$key not found in the array"
fi
