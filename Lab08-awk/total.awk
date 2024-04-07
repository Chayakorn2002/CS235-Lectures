#Begin Processing
BEGIN {print "Print Totals"}

#Body Processing
{total = $1 + $2 + $3}
{print $1 " + " $2 " + " $3 " = " total}

#End Processing
END {print "End Totals"}
