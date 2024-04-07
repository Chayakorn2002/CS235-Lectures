function die() {
	echo >&2 "$@"
	exit 1
}

[ "$#" -eq 1 ] || die "1 argument required, $# provided"

echo $1 | grep -E -q '^[0-9]+$' || die "Numeric argument required, $1 provided"
