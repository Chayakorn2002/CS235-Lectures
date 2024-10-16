if [[ $# != 2 ]]
then
	echo "Usage $0 <source> <target>"
	exit 1
fi

source_dir=$1
target_dir=$2

if [[ -d "$source_dir" ]]
then
	if [[ ! -d "$target_dir" ]]
	then
		echo "Directory $target_dir doesn't exist. Create $target_dir."
		# create new dir including the parent dir
		mkdir -p "$target_dir"
	fi

	cp -r "$source_dir"/* "$target_dir"

	echo "Files copied successfully!"
else
	echo "Source dir doesn't exist."
fi
