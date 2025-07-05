echo "Calculate GCD and LCM"
echo -n "Enter first number: "
read num1
echo -n "Enter secod number: "
read num2
if [ $num1 -lt $num2 ]
then
  term=$num1
else
  term=$num2
fi

gcd=1
count=1

while [ $count -le $term ]
do
  if [ $(($num1 % $count)) -eq 0 -a $(($num2 % $count)) -eq 0 ]
  then
    gcd=$count
  fi
  count=$((count+1))
done
lcm=$(( (num1 * num2) / gcd ))
echo "GCD = $gcd"
echo "LCM = $lcm"
