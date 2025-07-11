# To compile and run just write filename.sh 10 20

# 10 and 20 is a example we can put any number
if [ $# -ne 2 ]
then
	echo "Invalid argemunt"
else
	if [ $1 -gt $2 ]
	then
		echo "Max is : $1"
	else
		echo "Max is : $2"
	fi
fi

echo "Argument 0(file name):$0" # File name
echo "Argument 1: $1" # Number 1
echo "Argument 2: $2" # Number 2
echo "Argument 3: $3" # Number 3
a=$1
echo "$a" # Stores the first argument & print it
