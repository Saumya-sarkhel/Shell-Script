#!/bin/bash
# Print the Armstrong numbers in a range

echo -n "Enter the lower limit: "
read low
echo -n "Enter the upper limit: "
read up

for ((num=low; num<=up; num++))
do
    temp=$num
    sum=0
    count=0

    # Count number of digits
    while [ $temp -ne 0 ]
    do
        temp=$((temp / 10))
        count=$((count + 1))
    done
    temp=$num

    # Calculate sum of digits powered to count
    while [ $temp -ne 0 ]
    do
        digit=$((temp % 10))
        pow=1
        for ((i=0; i<count; i++))
        do
            pow=$((pow * digit))
        done
        sum=$((sum + pow))
        temp=$((temp / 10))
    done

    if [ $sum -eq $num ]; then
        echo "$num"
    fi
done
