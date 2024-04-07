# Check if the user have run the ... command in the system

if [ $# -ne 2 ] 
then
	echo "usage: $0 <username> <command>"
	exit 1
fi

username=$1
command=$2

output=$(ps axo user,pid,comm | grep "^${username}" | grep "${commamd}")

if [ -n output ]
then 
	echo "${username} is running ${command}"
else
	echo "${username} is not running ${command}"
fi
