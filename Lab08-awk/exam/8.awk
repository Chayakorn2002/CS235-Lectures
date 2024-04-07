BEGIN {
	n = 40;
	OFS="\t";
	srand(400);
}

NR == 1 { print $0; }

{
	max[NF - 1] = 0;
	min[NF - 1] = 100;
	total[NF - 1];

	for (i = 1; i < NF; i++) {
		max[i] = 0;
		min[i] = 100;
	}

	for (i = 1; i < n; i++) {
		random_id = int(rand() * 4999) + 1;
		random_id = sprintf("%04d", random_id);
		
		printf random_id "\t";
		for (j = 1; j < NF; j++) {
			random_score = int(rand() * 101);

			if (random_score > max[j]) {
				max[j] = random_score;
			} 
			if (random_score < min[j]) {
				min[j] = random_score;
			}

			total[j] += random_score;

			if (j == (NF - 1)) {
				printf random_score;
			} else {
				printf random_score "\t";
			}
		}
		print "";
	}
}

END {
	# MAX
	printf "MAX" "\t";
	for (i = 1; i < NF; i++) {
		printf max[i] "\t";	
	}
	print "";

	# MIN
	printf "MIN" "\t";
	for (i = 1; i < NF; i++) {
                printf min[i] "\t";
        }
	print "";

	print "-----------------------------------"

	# AVG
	printf "AVG" "\t";	
	for (i = 1; i < NF; i++) {
		avg = total[i] / n;
		printf avg "\t"; 
	}
	
	print "";

	print "-----------------------------------"
}
