# 153 = 1*1*1 + 5*5*5 + 3*3*3
echo "Armstrong Number Checking"
echo -n "Enter a number: "
read num

temp=$num
sum=0
# Finding the order of number
count=0
while [ $temp -ne 0 ]
do
  temp=$((temp / 10))
  count=$((count+ 1))
done

temp=$num
sum=0
while [ $temp -ne 0 ]
do
  digit=$((temp % 10))
  pow=1
  i=0
  while [ $i -lt $count ]
  do
    pow=$((pow * digit))
    i=$((i + 1))
  done
  sum=$((sum + pow))
  temp=$((k / 10))
done

if [ $sum -eq $num ]
then
  echo "$num is an Armstromg Number."
else
  echo "$num is not an Armstrong Number."
fi
