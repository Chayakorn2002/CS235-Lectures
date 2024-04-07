NR > 1 && $4 > 40 {
	salary = ($4 * $3) * 4;
	print $1, $2, salary;
}
