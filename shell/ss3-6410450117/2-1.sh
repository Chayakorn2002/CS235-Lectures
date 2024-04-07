if [[ $# != 1 ]]
then 
	echo "Usage $0 <c program>"
	exit 1
fi

if [[ $1 != *.c ]]
then 
	echo "$1 provided, Please provide c program"
	exit 1
fi

input_program_file="$(basename "$1")"
compiled_program="${input_program_file%.c}"

echo $input_program_file
echo $compiled_program

if gcc -o "$compiled_program" "$1" 2> /dev/null
then
	run_command="./$compiled_program > ${compiled_program}.input"
	time_limit=5

	timeout "$time_limit" "$run_command"

	if [[ $? == 0 ]]
	then
		if [[ -e "$(dirname $1)/${compiled_program}.output" ]]
		then
			diff "${compiled_program}.input" "${compiled_program}.output"

			if [[ $? == 0 ]]
			then
				echo "1"
			else
				echo "2"
			fi
			exit 0
		else
			echo "output file doesn't exist"
			exit 1
		fi
	else 
		echo "timeout!"
		exit 3
	fi
else
	echo "Compilation failed"
	exit 2
fi
