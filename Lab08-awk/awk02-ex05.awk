BEGIN {OFS="\t"}
{deptSales[$2] += $3}
END {
   print "Deleting \"supplies\" index entry";
   delete deptSales["supplies"];
   for (item in deptSales)
   {
      print item, ":", deptSales[item];
      totalSales +=    deptSales[item];
   }
   print "Total Sales", ":", totalSales;
}
