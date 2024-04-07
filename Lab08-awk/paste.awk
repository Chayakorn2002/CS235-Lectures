# exchange.awk script
# exchanges lines 2 by 2
{
   if (getline evenLine <"5lines.dat")
   {
      print $p,evenLine
   }
   else
      print $0
}
