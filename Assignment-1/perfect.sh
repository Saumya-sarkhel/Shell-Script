echo -n "Enter the number n: "
read n
sum=0
i=1
while [ $i -lt $n ]
do
  rem=$((n % i))
  if [ $rem -eq 0 ]; then
    sum=$((sum + i))
  fi
  i=$((i + 1))
done
if [ $sum -eq $n ]
then
  echo "true Perfect number."
else
  echo "false. Not a perfect number."
fi
