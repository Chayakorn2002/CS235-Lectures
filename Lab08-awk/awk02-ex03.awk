BEGIN {OFS="\t"}
{deptSales[$2] += $3}
END {
   for (item in deptSales)
   {
      print item, ":", deptSales[item];
      totalSales +=    deptSales[item];
   }
   print "Total Sales", ":", totalSales;
}
