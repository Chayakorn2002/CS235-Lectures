{success = gsub(/upx/, "PROGRAM", $0)}
{
   if (success > 0)
      print NR, success, $0
}
