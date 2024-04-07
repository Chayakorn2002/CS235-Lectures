{
   print larger($1,$2)," > ", smaller($1,$2)
}

function larger(m,n)
{
   return m>n?m:n;
}
function smaller(m,n)
{
   m = 5;
   n = 5;
   return m<n?m:n;
}
