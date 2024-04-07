if [[ ! -s "$1" ]]
then
	echo "file $1 doesn't exist or is empty"
	exit 1
fi

if [[ ! -r "$1" ]]
then
	echo "Do not have permission to read the $1 file"
	exit 2
fi
