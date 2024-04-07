BEGIN{ruler="123456789 "}

{
   startpos = match($0,"upx.*upx")
   if (startpos > 0)
   {
      printf ("%9s'%s%s%s%s%s'\n"," ",ruler,ruler,ruler,ruler,ruler)
      printf ("%2d %2d %2d '%s'\n", NR, RSTART, RLENGTH, $0)
   }
}
