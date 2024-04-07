{
	# ignore the directory
	if ($1 ~ /^d/ || $9 == "" || $9 == " ") {
		next;
	} 

	file_extension = "";

	split($9, parts, ".");
	if (length(parts) > 1) {
		file_extension = parts[length(parts)];
	}  else {
		file_extension = "unknown";
	}

	file_count[file_extension]++;
	file_size[file_extension] += $5;
	total_file++;
}

END {
	print "Number of files :", total_file;
	
	for (file_type in file_count) {
		if (file_type == "unknown") {
			continue;
		} else {
			print "Number of file type -", file_type, ":", file_count[file_type], " ", "total size:", file_size[file_type], "bytes";
		}
	}
	
	# unknown file section
	print "Number of unknown file type", ":", file_count["unknown"], " ", "total size:", file_size["unknown"], "bytes";
}
