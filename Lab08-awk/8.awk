BEGIN {
	srand(100);
	OFS="\t";
	print "-----------------------------------";
	print "ID", "Quiz1", "Quiz2", "Quiz3", "Quiz4", "Quiz5";
	print "-----------------------------------";
}

{
	# Number of records
	n = 40;
	
	# Arrays
	max[NF - 1] = 0;
	min[NF - 1] = 100;
	sum[NF - 1];

	# initialzing the array
	for (i = 0; i < 5; i++) {
		max[i] = 0;
		min[i] = 100;
	}

	for (i = 0; i < n; i++) {
		random_id = int(rand() * 5000);
    		formatted_id = sprintf("%04d", random_id);
    		printf formatted_id "\t"; 

    		for (j = 1; j < NF; j++) {
        		score = int(rand() * 101);
			if (score > max[j]) {
				max[j] = score;
			}
			if (score < min[j]) {
				min[j] = score;
			}
			sum[j] += score;
        		printf score "\t";
    		}
   		print "";
	} 
}

END {
	# MAX Calculation
	printf "MAX" "\t"
	for (i = 1; i <= 5; i++) {
		printf max[i] "\t";
	}

	print "";

	# MIN Calculation
	printf "MIN" "\t"
	for (i = 1; i <= 5; i++) {
		printf min[i] "\t";
	}

	print "";

	# Average Calculation
	print "-----------------------------------";
	printf "Avg" "\t"
	for (i = 1; i <= 5; i++) {
		avg = sum[i] / n;
		printf avg "\t";
        }
	print "";
	print "-----------------------------------";
}
