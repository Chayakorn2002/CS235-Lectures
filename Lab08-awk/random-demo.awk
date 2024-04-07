BEGIN{
   srand(systime())
   for (i=1;i<=10;i++)
      printf ("%.10f\n",rand());
}
