if (( $# != 2 )) 
then 
	echo "Usage: ./01.sh <first_num> <second_num>"
	exit 1
fi

first=$1
second=$2

if (( $first > $second )) 
then 
	echo "$first is more than $second"
elif (( $first < $second )) 
then
	echo "$first is less than $second"
elif (( $first == $second ))
then
	echo "$first is equal to $second"
fi
