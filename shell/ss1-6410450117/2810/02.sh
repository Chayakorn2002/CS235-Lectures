para=("$@")
for (( i=$#-1; i>=0; i-- ))
do
	echo ${para[i]}
done
