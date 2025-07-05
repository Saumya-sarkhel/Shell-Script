func(){
  if [ $1 -lt $2 ]
  then
    term=$1
  else
    term=$2
  fi
  gcd=0
  count=1
  while [ $count -le $term ]
  do
    if [ $(($1 % $count)) -eq 0 -a $(($2 % $count)) -eq 0 ]
    then
      gcd=$count
    fi
    count=$((count+1))
  done
  echo $gcd
}

echo "Calculate GCD and LCM"
echo -n "Enter first number: "
read num1
echo -n "Enter secod number: "
read num2

gcd=$(func $num1 $num2)

lcm=$(( (num1 * num2) / gcd ))
echo "GCD = $gcd"
echo "LCM = $lcm"
