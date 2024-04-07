gcc $1 2>/dev/null

if (( $? == 0 )) 
then
	exit 0
else 
	exit 1
fi
