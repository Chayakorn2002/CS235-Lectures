/[^\s]/ b nonblank
/^$/ b blank

:nonblank
a\
	-only one blank line left-

:blank
/^$/d
