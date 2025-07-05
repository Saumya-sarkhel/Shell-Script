echo -n "Enter the number n: "
read n
odd=0
even=0
i=1
while [ $i -le $n ]
do
  if [ $((i%2)) -eq 0 ]
  then
    even=$((even + i))
  else
    odd=$((odd + i))
  fi
  i=$((i+1))
done

echo "Sum of even numbers: $even"
echo "Sum of odd numbers: $odd"
