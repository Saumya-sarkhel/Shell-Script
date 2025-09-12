l=`cat $1|wc -l`
for((i=1;i<=l;i++))
do
    line=`head -$i $1|tail -1`
    c=`echo $line|wc -c`
    count=0
    for((j=1;j<=c;j++))
    do
        ch=`echo $line|cut -c $j`
        if [ "$ch" == "a" -o "$ch" == "e" -o "$ch" == "i" -o "$ch" == "o" -o "$ch" == "u" ]
        then
            count=$((count+1))
        fi
        done
        b[$i]=$count
    done
echo "Vowel count in each line is: "
for((i=1;i<=l;i++))
do
    echo ${b[i]}
done
echo
