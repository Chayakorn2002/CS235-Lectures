min=$1

for i in "$@"
do
	if (( i < min )) 
	then
		min=$i
	fi
done
echo $min
