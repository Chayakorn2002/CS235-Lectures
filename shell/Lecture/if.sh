if who | grep $1 > /dev/null
then 
	printf "%s is logged in\n" $1
	exit 0
else 
	printf "%s is not logged in\n" $1
	exit
fi
