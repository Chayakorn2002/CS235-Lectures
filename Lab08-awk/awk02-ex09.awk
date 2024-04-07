# LINE_WIDTH characters per line

BEGIN{
   LINE_WIDTH=30
}
{
   len = length($0);
   if (len <= LINE_WIDTH)
      print $0;
   else
   {
      for (i=1; len > LINE_WIDTH; i += LINE_WIDTH)
      {
         print substr($0,i,LINE_WIDTH);
         len -= LINE_WIDTH;
      }
      print substr ($0,i);
   }
}
