BEGIN{
   dept="computers"
}
{words[$2]++}
END{
   if (dept in words)
      printf ("%-15s %d\n", dept, words[dept]);
}
