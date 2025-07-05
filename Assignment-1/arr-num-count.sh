echo -n "Enter the size: "
read n
echo "Enter the data: "
for ((i = 0; i < n; i++)); do
    echo -n "a[$i]: "
    read a[$i]
done
echo "The elements are: "
for ((i = 0; i < n; i++)); do
    echo "${a[$i]}"
done
count1=0
count2=0

for ((i = 0; i < n; i++)); do
    if [ ${a[$i]} -lt 0 ]; then
        count1=$((count1 + 1))
    else
        count2=$((count2 + 1))
    fi
done
echo "Negative numbers: $count1"
echo "Positive numbers: $count2"
