BEGIN {
	print "ARGC=" ARGC;
	for (i = 0; i < ARGC; i++) {
		printf "cmd line arg #%d ='%s'\n", i, ARGV[i];
	}
}
