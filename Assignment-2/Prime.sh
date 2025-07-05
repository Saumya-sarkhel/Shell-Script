prime(){  # Function call
  f=0
  for ((i = 1; i <= $1; i++))
    do
      k=$(expr $1 % $i)
      if [ $k -eq 0 ]; then
        f=$(($f + 1))
      fi
  done
  echo $f
}

echo -n "Enter the number: "
read n
f=`prime $n`
if [ $f -eq 2 ]; then
    echo "$n is Prime number."
elif [ $f -eq  1 ]; then
  echo "$n is nor a prime number or Composite number."
else
  echo "$n is Not Prime number."
fi
