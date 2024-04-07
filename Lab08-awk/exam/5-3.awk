BEGIN {
	max = 0;
}

{
	if ($4 ~ /^[0-9]+$/) {
		if ($4 > max) {
			max = $4;
			record = $0;
		} else if ($4 == max) {
			record = record  "\n"  $0;
		}
	}
}

END {
	print record;
}
