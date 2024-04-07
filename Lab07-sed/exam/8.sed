/[^\s]/ b nonblank;
/^$/ b blank;

:blank
        //d;
:nonblank
        a\
        -only one blank line left-;
