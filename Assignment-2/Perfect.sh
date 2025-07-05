perfect(){
  sum=0
  i=1
  while [ $i -lt $1 ]
  do
    rem=$(($1 % i))
    if [ $rem -eq 0 ]; then
      sum=$((sum + i))
    fi
    i=$((i + 1))
  done
  echo $sum
}

echo -n "Enter the number n: "
read n
p=`perfect $n`
if [ $p -eq $n ]
then
  echo "true Perfect number."
else
  echo "false. Not a perfect number."
fi
