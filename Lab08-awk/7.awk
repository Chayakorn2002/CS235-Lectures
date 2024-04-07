BEGIN {
	OFS="\t";
	srand(100);
	print "ID", "Quiz1", "Quiz2", "Quiz3", "Quiz4", "Quiz5";
}

{
	for (i = 0; i < 40; i++) {
		random_id = int(rand() * 4999) + 1 ;
    		formatted_id = sprintf("%04d", random_id);
    		printf formatted_id "\t"; 

    		for (j = 1; j < NF; j++) {
			score = int(rand() * 100);
			printf score "\t";
    		}
	
   		 print "";
	} 
}

