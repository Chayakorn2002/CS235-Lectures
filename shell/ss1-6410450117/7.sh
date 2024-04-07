# Error handling session
# Didn't provide the date
if (( $# == 0 )) 
then
	echo "You must at least provide a date!"
	exit 1
fi

# Date not valid
for (( i=1; i <= $#; i++ )) 
do
	if date -d "${!i}" >/dev/null 2>&1; 
	then
		continue
	else 
		echo "Error occurred with argument #$i, please provide a correct date!"
		exit 1
	fi
done

# Initializing 
if (( $# == 1 ))
then 
	bigger_date=$(date +%s)
	smaller_date=$(date -d "$1" +%s)
elif (( $# == 2 )) 
then 
	if (( $(date -d "$1" +%s) > $(date -d "$2" +%s) )) 
	then 
		bigger_date=$(date -d "$1" +%s)
		smaller_date=$(date -d "$2" +%s)
	else 
		bigger_date=$(date -d "$2" +%s)
		smaller_date=$(date -d "$1" +%s)
	fi
fi

# Calculating
difference=$(( bigger_date - smaller_date ))

# 1 day contains 86,400 seconds
# 1 * ((24 * 60) * 60)
days=$(( difference / 86400))

echo "$days"
