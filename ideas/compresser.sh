read -p "Enter the file or directory to compress: " source_path

if [ -e "$source_path" ]; then
    PS3="Choose the archive format (1 for ZIP, 2 for tar.gz): "

    options=("ZIP" "tar.gz")

    select option in "${options[@]}"; do
        case $REPLY in
            1)
                archive_format="ZIP"
                break
                ;;
            2)
                archive_format="tar.gz"
                break
                ;;
            *)
                echo "Invalid option, please select 1 for ZIP or 2 for tar.gz."
                ;;
        esac
    done

    read -p "Enter the name of the archive (without extension): " archive_name

    case "$archive_format" in
        "ZIP")
            zip -r "$archive_name.zip" "$source_path"
            echo "ZIP archive created: $archive_name.zip"
            ;;
        "tar.gz")
            tar -czvf "$archive_name.tar.gz" "$source_path"
            echo "tar.gz archive created: $archive_name.tar.gz"
            ;;
        *)
            echo "Invalid archive format. Please choose either ZIP or tar.gz."
            ;;
    esac
else
    echo "File or directory does not exist."
fi
