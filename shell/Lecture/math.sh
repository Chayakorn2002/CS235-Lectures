count=5
echo $count

let "count = $count + 5" # correct way, or (( count = $count + 5 ))
echo $count

let count2="$count + 5"
echo $count2

let count3="(( $count + 5 ))"
echo $count3

count=$count+30 # doesn't work
echo $count
