
echo -n "Enter coefficient X^2: "
read a
echo -n "Enter coefficient X: "
read b
echo -n "Enter coefficient for constant term: "
read c
D=$(echo "$b * $b - 4 * $a * $c" | bc)
echo "The Equation is: $a X^2 + $b X + $c = 0"

if (( $(echo "$D < 0" | bc -l) )); then
    echo "The equation has complex roots."
    real=$(echo "scale=4; -1 * $b / (2 * $a)" | bc)
    imag=$(echo "scale=4; sqrt(-1 * $D) / (2 * $a)" | bc)
    echo "Root 1: $real + ${imag}i"
    echo "Root 2: $real - ${imag}i"

elif (( $(echo "$D > 0" | bc -l) )); then
    root1=$(echo "scale=4; (-1 * $b + sqrt($D)) / (2 * $a)" | bc)
    root2=$(echo "scale=4; (-1 * $b - sqrt($D)) / (2 * $a)" | bc)
    echo "Root 1: $root1"
    echo "Root 2: $root2"

else  #(( $(echo "$D == 0" | bc -l) )); then
    root=$(echo "scale=4; -1 * $b / (2 * $a)" | bc)
    echo "The equation has one real root: $root"
fi
