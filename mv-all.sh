source_dir=$1
des_dir=$2

find "$source_dir" -type f -exec mv {} "des_dir" \;

echo "All files moved to $des_dir"
