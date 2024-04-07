# This script require 1 command line argument that is the c program 
<<COMMENT 
Input : 
- Inputted c program (hello.c)

Output : 
- Compiled c program (hello)
- Result after running (1) (hello.input)

File in local :
- Expected output of the program (hello.output)
COMMENT

# Check if the inputed argument's amount is correct
if [[ $# -ne 1 ]] 
then 
	echo "Usage: $0 hello.c"
	exit 1
fi

# Input c program (hello.c)
input_program=$1

# Check if the inputed file is the c program 
if [[ "$input_program" != *.c ]] 
then
	echo "The provided \` $input_program \` is not the c program."
	exit 1
fi

# Extracting the path from the filename using "basename" (/Chayakorn/Documnets/unix/hello -> hello)
input_program_file="$(basename "$input_program")"

# Extracting .c from the filename (hello.c -> hello)
compiled_program="${input_program_file%.c}"

# Checking for compilation error
if gcc -o "$compiled_program" "$input_program" 2> /dev/null 
then 
	run_command="./$compiled_program > ${compiled_program}.input"
	time_limit=5
	
	timeout "$time_limit" "$run_command"

	# Checking if the program run more than the time limit
	if [ $? -eq 0 ]
	then
		# Checking if the output file exist using "dirname" 
		if [[ -e "$(dirname "$input_program")/${compiled_program}.output" ]]
		then 
		
			diff "${compiled_program}.input" "${compiled_program}.output"
		
			if [[ $? -eq 0 ]] 
			then 
				echo "1"
			else 
				echo "0"
			fi
			exit 0 # terminated succesfully
		else
			echo "${compiled_program}.output does not exist."
			exit 1
		fi
	else			
		echo "Time out (the program run more than $time_limit seconds)."
		exit 3
	fi
else 
	echo "Compilation failed."
	exit 2 
fi
