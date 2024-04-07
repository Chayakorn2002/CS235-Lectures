$4 > 40 && NR > 1 {
	salary = ($3 * $4) * 4;
	print $1, $2, salary;
}
