file_1_size=$(stat -c %s "$1")
file_2_size=$(stat -c %s "$2")

if [ -f "$1" ] && [ -f "$2" ]
then
	if (( $file_1_size > $file_2_size ))
	then
		echo "$1"
	elif (( $file_2_size > $file_1_size ))
	then
		echo "$2"
	elif (( $file_1_size == $file_2_size ))
	then
		echo "$1, $2"
	fi
	exit 0
else 
	exit 1
fi
