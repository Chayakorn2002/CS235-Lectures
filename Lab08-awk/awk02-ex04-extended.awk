{
   for (i = 1; i <= NF; i++)
      words[$i]++;
}
END{
   for (wrd in words)
      printf ("%-15s %d\n", wrd, words[wrd]);
}
