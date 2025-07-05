echo "Choose a shape:"
echo "1. Square"
echo "2. Circle"
echo "3. Rectangle"
echo "4. Triangle"
read -p "Enter your choice (1-4): " choice

case $choice in
  1)
  echo -n "Enter the legth of the side: "
    read side
    area=$(echo "$side * $side" | bc -l)
    perimeter=$(echo "4 * $side" | bc -l)
    echo "Square Area: $area"
    echo "Square Perimeter: $perimeter"
    ;;
  2)
    echo -n "Enter length of side of Square: "
    read radius
    area=$(echo "scale=4; 3.1416 * $radius * $radius" | bc -l)
    perimeter=$(echo "scale=4; 2 * 3.1416 * $radius" | bc -l)
    echo "Circle Area: $area"
    echo "Circle Perimeter (Circumference): $perimeter"
    ;;
  3)
    echo -n "Enter the length of the Rectangle: "
    read length
    echo -n "Enter the width of the Rectangle: "
    read width
    area=$(echo "$length * $width" | bc -l)
    perimeter=$(echo "2 * ($length + $width)" | bc -l)
    echo "Rectangle Area: $area"
    echo "Rectangle Perimeter: $perimeter"
    ;;
  4)
    echo -n "Enter 1st side of triangle: "
    read a
    echo -n "Enter 2nd side of triangle: "
    read b
    echo -n "Enter 3rd side of triangle: "
    read c
    s=$(echo "scale=4; ($a + $b + $c) / 2" | bc -l)
    area=$(echo "scale=4; sqrt($s * ($s - $a) * ($s - $b) * ($s - $c))" | bc -l)
    perimeter=$(echo "$a + $b + $c" | bc -l)
    echo "Triangle Area: $area"
    echo "Triangle Perimeter: $perimeter"
    ;;
  *)
    echo "Invalid choice! Please select 1, 2, 3, or 4."
    ;;
esac
