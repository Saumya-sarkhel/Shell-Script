echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo -n "Enter your choice: "
read choice
if [ $choice -ge 1 -a $choice -le 4 ]; then
    echo -n "Enter 1st number: "
    read x
    echo -n "Enter 2nd number: "
    read y
fi
case $choice in
1) echo "Addition is: $(($x + $y))" ;;
2) echo "Subtraction is: $(($x - $y))" ;;
3) echo "Multiplication is: $(($x * $y))" ;;
4) echo "Division is: $(echo "scale=2;($x/$y)" | bc)" ;;
*) echo "Wrong choice" ;;
esac
