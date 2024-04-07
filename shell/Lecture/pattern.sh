str="/user/local/vin/myexefile.exe"
echo "str is \"$str\""

# String manipulation
echo
echo '${str#/*/}    = "'${str#/*/}'"'
echo '${str##/*/}    = "'${str##/*/}'"'
echo '${str}        = "'${str}'"'
echo '${str%.*/}    = "'${str%.*/}'"'
echo '${str%%.*/}    = "'${str%%.*/}'"'

str="Come to class late is not good. I won't come to class late"
echo "str is \"$str\""

# More string manipulation
echo '${str/class/themovie}    = "'${str/class/themovie}'"'
echo '${str//class/the movie}  = "'${str//class/the movie}'"'

echo
echo '${str/#[Cc]ome/go}    = "'${str/#[Cc]ome/go}'"'
echo '${str/%late/early}    = "'${str/%late/early}'"'
