# sort -k 4n,4r data3.txt | awk -f 5_3.awk
BEGIN {
	max = 0;
}

{
	if ($4 ~ /^[0-9]+$/) {
		if ($4 > max) {
			max = $4;
			records = $0;
		} else if ($4 == max) {
			records = records "\n" $0;
		}
	}
}

END {
	print records;
}
