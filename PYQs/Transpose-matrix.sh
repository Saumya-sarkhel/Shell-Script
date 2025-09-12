echo -n "Enter the nunber of rows: "
read r
echo -n "Enter the nunber of rows: "
read c

declare -A a
# Input matrix elements
for ((i=0; i<r; i++)); do
  for ((j=0; j<c; j++)); do
    echo -n "Enter data: "
    read a[$i,$j]
  done
done
# Print transpose of the matrix
echo "Transpose of the matrix:"
for ((i=0; i<c; i++)); do
  for ((j=0; j<r; j++)); do
    echo -n "${a[$j,$i]} "
  done
  echo
done
