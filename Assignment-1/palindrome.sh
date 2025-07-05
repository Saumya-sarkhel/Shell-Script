# Write a script to find the number is palindrome or not.
echo -n "Enter a number: "
read n

temp=$n
sum=0

while [ $temp -ne 0 ]
do
  digit=$((temp % 10))
  temp=$((temp / 10))
  sum=$((sum * 10 + digit))
done

if [ $sum -eq $n ]
then
  echo "$n is a palindrome number."
else
  echo "$n is not a palindrome number."
fi
