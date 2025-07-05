fibo() {  # Function call
  a=0
  b=1
  echo "Fibonacci series is:"
  for (( i=0; i<$1; i++ )); do
    echo -n "$a "
    c=$((a + b))
    a=$b
    b=$c
  done
  echo # for newline after the series
}

echo "Print Fibonacci Series"
echo -n "Enter number n: "
read n
fibo $n

