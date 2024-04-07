# Report total number of times a specific user has logged in to the system

if [ $# -ne 1 ]
then
	echo "Usage: ./$0 <username>"
	exit 1
fi

username="$1"

last | awk -v user="$username" '
	$1 == user { count++ }
	END { print "User " user " has logged in " count " times." }
'
