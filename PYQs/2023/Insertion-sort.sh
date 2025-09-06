
echo -n "Enter the number of elements: "
read n

declare -a a
for ((i=0; i<n; i++))
do
  echo -n "Enter data: "
  read a[i]
done

for ((i=1; i<n; i++))
do
  t=${a[i]}
  c=$((i-1))
  while (( c>=0 && a[c]>t )); do
    a[$((c+1))]=${a[c]}
    c=$((c-1))
  done
  a[$((c+1))]=$t
done

echo -n "Sorted array: "
for ((i=0; i<n; i++)); do
  echo -n "${a[i]} "
done
echo
