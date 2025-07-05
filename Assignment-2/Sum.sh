sum()
{  # Function call
  z=$(($1+$2))
  echo $z # Returns the value of sum
}

echo -n "Enter first number: "
read a

echo -n "Enter second number: "
read b

s=`sum $a $b` # Function Call
echo "sum is: $s"
