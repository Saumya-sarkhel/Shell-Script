echo -n "Enter the nunber of rows: "
read r
echo -n "Enter the nunber of rows: "
read c

for ((i=0; i<r; i++)); do
  for ((j=0; j<c; j++)); do
    echo -n "Enter data: "
    read a[i][j]    #Error
  done
done



echo -n "Sorted array: "
for ((i=0; i<r; i++)); do
  for ((j=0; j<c; j++)); do
    echo -n "${a[i]} "
  done
done
echo
