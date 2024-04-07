max=$(date -r $1 +%s)
filename=$1

for i in "$@"
do
	secs=$(date -r $i +%s)
	if (( secs > max )) 
	then
		max=secs
		filename=$i
	fi
done

echo $filename
