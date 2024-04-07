/^  [^h]/d
/^#/d
/^f/d
/^$/d

/^lease/{
    h
    d
}

/^  h/{
    G
    s/^  hardware ethernet \(.*\);\nlease \(.*\) {$/\2\n\1/
}

/^}/{
    g
    d
}
