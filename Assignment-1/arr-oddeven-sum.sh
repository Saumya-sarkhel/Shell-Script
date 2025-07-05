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
odd_sum=0
even_sum=0

for ((i = 0; i < n; i++)); do
    if ((${a[$i]} % 2 == 0)); then
        even_sum=$((even_sum + ${a[$i]}))
    else
        odd_sum=$((odd_sum + ${a[$i]}))
    fi
done
echo "Sum of even numbers: $even_sum"
echo "Sum of odd numbers: $odd_sum"
