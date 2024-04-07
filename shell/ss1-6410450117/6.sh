date_1_sec=$(date -d "$1" +%s)
date_2_sec=$(date -d "$2" +%s)

difference=$(( date_2_sec - date_1_sec ))

# 1 day contains 86,400 seconds
# 1 * ((24 * 60) * 60)
days=$(( difference / 86400))

echo "$days"
