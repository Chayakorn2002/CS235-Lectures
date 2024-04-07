BEGIN {print "Type MISSISSIPPI and then press ENTER follow by a Ctrl-d"}

{
   loc = index ($0, "IS");
   print "'IS'     is found at ", loc, " in ", $0;

   loc = index ($0, "SI");
   print "'SI'     is found at ", loc, " in ", $0;

   loc = index ($0, "SIS");
   print "'SIS'    is found at ", loc, " in ", $0;

   loc = index ($0, "IPPI");
   print "'IPPI'   is found at ", loc, " in ", $0;

   loc = index ($0, "MO");
   print "'MO'     is found at ", loc, " in ", $0;

}
