if [ -z "$1" ] 
then
    echo "Usage: $0 <script-to-run>"
    exit 1
fi

# Set execute permission on the provided script
chmod +x "$1"

# Run the provided script
./"$1" "$@"
