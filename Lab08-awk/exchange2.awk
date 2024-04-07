# exchange.awk script
# exchanges lines 2 by 2
{
   if (getline evenLine  == 1)
   {
      print evenLine
      print $0
   }
   else
      print $0
}
