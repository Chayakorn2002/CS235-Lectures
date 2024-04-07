c=2; let "c <<= 2"; echo $c
c=64; (( c >>= 2 )); echo $c
c=5; let "c &= 3"; echo $c
c=5; (( c = $c | 3 )); echo $c
c=2; let "c <<= 48"; echo $c
c=1; (( c = ~ $c )); echo $c
