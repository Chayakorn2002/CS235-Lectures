{
   printf ("%6d\t%s\n", len=length($0), $0);
   countChar += len;
}
END {print countChar " Total characters in", FILENAME}
