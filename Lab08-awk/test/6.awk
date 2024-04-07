BEGIN {
	OFS = "\t";
}

NR == 1 {
	print $0, "Weekly Report";
	next;
}

{
	if ($4 > 40) {
		total = (40 * $3) + ((($4 - 40) * 1.5) * $3);
	} else {
		total = $4 * $3;	
	} 
	sum += total;
	print $0, total;
}

END {
	printf "Total accumulated: %2lf", sum;
}
