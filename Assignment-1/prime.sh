echo -n "Enter the number: "
read n
f=0
for ((i = 1; i <= n; i++))
  do
    k=$(expr $n % $i)
    if [ $k -eq 0 ]; then
        f=$(expr $f + 1)
    fi
done
if [ $f -eq 2 ]; then
    echo "$n is Prime number."
elif [ $f -eq  1 ]; then
  echo "$n is nor a prime number or Composite number."
else
    echo "$n is Not Prime number."
fi
