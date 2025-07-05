# echo "Hello linux devs"
echo -n "enter first numbers: "
read x
echo -n "Enter second number: "
read y
echo "Value of X: $x"
echo "Value of Y: $y"
add=$(expr $x + $y)
echo "Addition of $x and $y is: $add"
sub=$(expr $x - $y)
echo "Subtraction of $x and $y is: $sub"
mul=$(expr $x \* $y)
echo "Multiplication of $x and $y is: $mul"
div=$(echo "scale=2;($x/$y)" | bc)
echo "Division of $x and $y is: $div"

