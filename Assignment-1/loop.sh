echo "Choose an option:"
echo "1. Print 1 to N"
echo "2. Print N to 0"
read -p "Enter your choice (1 or 2): " choice

case $choice in
  1)
    read -p "Enter the value of N: " n
    echo "Printing from 1 to $n:"
    i=1
    while [ $i -le $n ]
    do
      echo $i
      i=$((i+1))
    done
    ;;
  2)
    read -p "Enter the value of N: " n
    echo "Printing from $n to 0:"
    i=$n
    while [ $i -ge 0 ]
    do
      echo $i
      i=$((i-1))
    done
    ;;
  *)
    echo "Invalid choice! Enter 1 or 2"
    ;;
esac
