#if [ $# -eq 0 ]
if (( $# == 0 ))
then
	echo "Usage: $0 id ..." 1>&2
	exit 1
fi
for id
do
	awk -F: '{print $1, $5}' /etc/passwd | grep "$id"
done

# Answer
# 1.1) The following script input the id, name, lastname or fullname and output the information of user in the form of "id fullname". If the user doesn't provide anything the script will output the error message.
# 1.2) for id in "$@" because this syntax ensure that each argument is treated as a separate item in the loop.
: '1.3) the difference is 
	./1.sh Mailing List Manager
	shell will recognize Mailing List Manager as 3 different arguments
	while ./1.sh "Mailing List Manager"
	was recognized by shell as 1 argument'
