max=$(date -r $1 +%s)
filename="$1"

for i in "$@"
do
	if (( $(date -r $i +%s) > $max))
	then 
		max=$(date -r $i +%s)
		filename="$i"
	fi
done

echo $filename
