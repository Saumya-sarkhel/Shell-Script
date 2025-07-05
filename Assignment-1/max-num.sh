echo "Maximum number between Three Numbrs"
echo -n "Enter first number: "
read a
echo -n "Enter second number: "
read b
echo -n "Enter third number: "
read c
if [ $a -eq $b -a $a -eq $c ]
then
  echo "All numbers are Equal"
else
  if [ $a -ge $b -a $a -ge $c ]
  then
    max=$a
  elif [ $b -gt $a -a $b -gt $c ]
  then
    max=$b
  else
    max=$c
  fi
  echo "The maximum number is $max"
fi
