function die() {
    echo >&2 "$@"
    exit 1
}

if [[ "$#" != 1 ]]; then
    die "One argument required, $# provided"
fi

if [[ ! "$1" =~ ^[0-9]+$ ]]; then
    die "Numeric argument required, $1 provided"
else
    echo "Successful!"
fi
