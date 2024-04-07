if (( $1 > $2 )) 
then
        echo $1 is more than $2
elif (( $1 < $2 )) 
then
        echo $1 is less than $2
elif (( $1 == $2 ))
then
	echo $1 is equal to $2
fi
