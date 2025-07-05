# Factorial calculate
echo -n "Enter the number: "
read n
if [ "$n" -lt 0 ]; then
  echo "Factorial is not valid."
  exit 1
fi
fact=1
for (( i=1; i<=n; i++ )); do
  fact=$((fact * i))
done
echo "Factorial of $n is $fact"
