echo -n "Enter the value of n: "
read n
even=0
odd=0
i=1
while [ $i -le $n ]
do
  rem=$((i % 2))
  if [ $rem -eq 0 ]; then
    even=$((even + 1))
  else
    odd=$((odd + 1))
  fi
  i=$((i+1))
done

echo "Total even numbers: $even"
echo "Total odd numbers: $odd"
