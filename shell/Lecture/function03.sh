add() {
	(( res = $1 + $2 ))
	return $res
}

add 4 5
echo "4 + 5 is" $?

add 42 96
echo "42 + 96 is" $?
