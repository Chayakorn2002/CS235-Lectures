BEGIN {
	if ($1 ~ /~d/) {
		next;
	}

	file_extension = "";

	split($9, parts, ".");

	if (length(parts) > 1) {
		file_extension = parts[length(parts)];
	} else {
		file_extension = "unknown";
	}

	file_count[file_extension]++;
	file_size[file_extension] += $5;
	total_file++;
}

END {
	print "Number of files
}
