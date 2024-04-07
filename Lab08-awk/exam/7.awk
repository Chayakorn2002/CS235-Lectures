BEGIN {
	n = 40;
	OFS="\t";
	srand(400);
}

NR == 1 { print $0; }

{
	for (i = 1; i < n; i++) {
		random_id = int(rand() * 4999) + 1;
		random_id = sprintf("%04d", random_id);
		
		printf random_id "\t";
		for (j = 1; j < NF; j++) {
			random_score = int(rand() * 101);
			if (j == (NF - 1)) {
				printf random_score;
			} else {
				printf random_score "\t";
			}
		}
		print "";
	}
}
