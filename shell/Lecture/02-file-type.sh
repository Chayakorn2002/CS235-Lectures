# Check file type
if [ $# -ne 1 ]
then
	echo "Usage: $0 <filename>"
	exit 1
fi

filename=$1

if [ -a ${filename} ]
then 
	if [ -r ${filename} ]
	then
		file_type=$(file -b ${filename})
		echo "File type of ${filename} is ${file_type}"
	else
		echo "Can't read the file"
	fi
else
	echo "Not exist"
fi
