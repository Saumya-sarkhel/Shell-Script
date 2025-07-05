echo -n "Enter the number: "
read n
if [ "$n" -lt 1 ]; then
    echo "Enter positive number greater then Zero."
    exit 1
fi
sum=0
for (( i=1; i<=n; i++ ))
do
    sum=$((sum + i))
done
echo "The sum of first $n natural number is $sum"
