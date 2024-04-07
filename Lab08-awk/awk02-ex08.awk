BEGIN {print "Type MISSISSIPPI and then press ENTER follow by a Ctrl-d"}

{
   loc = index ($0, "SIS");
   print "Variable 'loc' contains position of 'SIS' in the string"

   print "substr ($0, loc, 3) contains: ", substr($0,loc,3);

   stringVar = substr($0,loc);
   print "stringVar or substr ($0,loc) contains: ", substr($0,loc);
}
