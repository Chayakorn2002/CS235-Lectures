# set -o verbose

err_message=""
total=0
not_fount=0
success=0

for file in "$@"
do
	err_message=$(gcc "$file" 2>&1) 
	if [ $? -eq 0 ] # compile success
	then 
		success=$((success+1))
	elif echo $err_message | grep -q 'cc1: fatal error: .*\.c: No such file or directory'
	then
		not_found=$((not_found+1))
	fi
	total=$((total+1))
done

echo $total
echo $not_found
echo $success
