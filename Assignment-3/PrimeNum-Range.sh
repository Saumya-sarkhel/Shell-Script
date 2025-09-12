echo -n "Enter the lower boundary: "
read low
echo -n "Enter the upper boundary: "
read up

# # Through Command line argument
# low=$1  # Lower limit
# up=$2   # Upper limit

while [ $low -le $up ]
do
  count=0
  for ((i=1; i<=low; i++)); do
    if [ $((low % i)) -eq 0 ]
    then
        count=$(($count + 1))
    fi
  done

  if [ $count -eq 2 ]
  then
      echo -n "$low  "
  fi

  low=$(($low + 1))
done
echo
