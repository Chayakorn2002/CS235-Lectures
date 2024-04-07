{success = sub(/upx/, "PROGRAM", $0)}
{
   if (success > 0)
      print NR, $0
}
