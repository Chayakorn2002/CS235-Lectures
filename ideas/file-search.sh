# Usage : ./file-search.sh /Users/chayakorn/Documents/ "*.pdf"
if [[ $# != 2 ]]
then
	echo "Usage $0 <search_dir> [search_pattern]"
	exit 1
fi

search_dir="$1"
search_pattern="$2"

find "$search_dir" -type f -name "$search_pattern" 2> /dev/null
