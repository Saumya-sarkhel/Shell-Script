list=$1
a=(2 9 3 6 8)
n=${#a[@]}
# Bubble sort - 1 for Ascending 2 for Descending
# through command line argument
for ((i=0; i<n-1; i++))
do
  for ((j=0; j<n-i-1; j++))
  do
    if [ "$list" -eq 1 ]; then
    # Ascending order
      if (( a[j] > a[j+1] )); then
        t=${a[j]}
        a[j]=${a[j+1]}
        a[j+1]=$t
      fi
    elif [ "$list" -eq 2 ]
    then
    # Descending order
      if (( a[j] < a[j+1] )); then
        t=${a[j]}
        a[j]=${a[j+1]}
        a[j+1]=$t
      fi
    fi
  done
done

echo "${a[@]}"
echo "end.."
