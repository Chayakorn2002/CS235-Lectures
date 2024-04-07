alist () {
	if [[ $1 == "more" ]] || [[ $1 == "less" ]]
	then
		ls -l | "$1"
	else
		ls -l "$1" | "$2" 
	fi
}

clear
PS3="Enter [ less or more ]: "
select command in more less quit
do
	case $command in
		more) alist file1 more
			alist file2 more
			alist more;;
		less) alist file1 less
			alist file2 less
			alist less;;
		quit) break;;
		*) echo "Sorry, the input's out of context.";;
	esac
done
