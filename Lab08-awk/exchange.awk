# exchange.awk script
# exchanges lines 2 by 2
{
   if ((getline evenLine <"abc") == 1)
   {
      print evenLine
      print $p
   }
   else
      print $0, "--"
}
END{
   printf ("About to exit\n");
   exit 5
}
