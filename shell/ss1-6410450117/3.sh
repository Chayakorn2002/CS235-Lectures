para=("$@")

min=$1

# enclosed in the double quotes to ensure that each element is seperated from each other
# @ (${array[@]}) expand all the elements in an array or the words in a variable into separate entities
# * (${array[*]}) combines them into a single string with spaces as separators. It treats the entire array or variable as one entity
for i in "${para[@]}" 
do
	if (( i < min )) 
	then
		min=$i
	fi
done

echo $min
