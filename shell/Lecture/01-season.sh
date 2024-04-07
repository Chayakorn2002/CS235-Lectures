# Specify the season of each month
season["Jan"]="Winter"
season["Feb"]="Winter"
season["Mar"]="Summer"
season["Apr"]="Summer"
season["May"]="Summer"
season["Jun"]="Summer"
season["Jul"]="Rainy"
season["Aug"]="Rainy"
season["Sep"]="Rainy"
season["Oct"]="Rainy"
season["Nov"]="Winter"
season["Dec"]="Winter"

current_month=$(date +%b)

if [ -n season[current_month] ]
then
	season=${season[current_month]}
	echo "${current_month}: Current season is ${season}"
fi
