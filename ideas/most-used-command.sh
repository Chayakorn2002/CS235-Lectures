if [ ! -f "$1" ]
then
	echo "Usage: $0 <history file>"
fi

command_list=$(cat "$1")

echo "$command_list" | awk '
    {a[$2]++}
    END {
        for (i in a) {
            print a[i] " " i
        }
    }' | sort -rn

