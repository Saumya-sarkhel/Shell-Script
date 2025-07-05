# Factorial calculate using Funstion
fact(){
  fact=1
  for (( i=1; i<=$1; i++ )); do
    fact=$((fact * i))
  done
  echo $fact
}

echo -n "Enter the number: "
read n
  if [ "$n" -lt 0 ]; then
    echo "Factorial is not valid."
    exit 1
  else
    fact=`fact $n`
    echo "Factorial of $n is $fact"
  fi
