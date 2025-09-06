
l=$1
u=$2
echo "Prime numbers are: "
for ((n=l;n<=u;n++)); do

  f=0
  for ((i=1;i<=n;i++))
  do
    k=`expr $n % $i`
    if [ $k -eq 0 ]; then
      f=`expr $f + 1`
    fi
  done

  if [ $f -eq 2 ]; then
    echo "$n "
  fi
done
