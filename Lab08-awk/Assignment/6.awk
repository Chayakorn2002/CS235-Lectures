BEGIN {OFS="\t"}

NR == 1 {
	print $0, "Weekly Report"
}

NR > 1 {
	if ($4 > 40) {
		sum = (40 * $3) + ((($4 - 40) * 1.5) * $3)
		print $0, sum
	}
	else {
		sum = $4 * $3
		print $0, sum
	}
	total += sum
}

END {
	print "Total : "  total 
}
