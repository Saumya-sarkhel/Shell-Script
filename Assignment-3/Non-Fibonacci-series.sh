
echo "Print Non-Fibonacci Series"
echo -n "Enter number n (upper limit): "
read n

# Generate Fibonacci numbers up to n and store in an array
a=0
b=1
fib=()
while [ $a -le $n ]
do
  fib=$((fib+$a))
  c=$((a + b))
  a=$b
  b=$c
done

echo "Non-Fibonacci series up to $n is:"

for ((i=1; i<=n; i++))
do
  is_fib=0
  for f in "${fib[@]}"
  do
    if [ $i -eq $f ]; then
      is_fib=1
      break
    fi
  done
  if [ $is_fib -eq 0 ]; then
    echo -n "$i "
  fi
done
echo
