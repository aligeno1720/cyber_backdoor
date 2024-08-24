#!/bin/bash

DATABASE_DIR="mt103_database"
mkdir -p "$DATABASE_DIR"

# URL of the remote server providing MT103 files
REMOTE_URL="http://example.com/mt103_files"

# Function to download MT103 files from the remote server
download_mt103() {
    echo "Downloading MT103 files from $REMOTE_URL..."

    # Simulate downloading multiple MT103 files
    for file in {001..005}.txt; do
        file_url="$REMOTE_URL/$file"
        output_file="$DATABASE_DIR/$file"

        echo "Downloading $file_url..."
        curl -s -o "$output_file" "$file_url"

        if [ $? -eq 0 ]; then
            echo "$file downloaded successfully."
        else
            echo "Failed to download $file_url."
        fi
    done
}

# Function to list all downloaded MT103 files
list_mt103() {
    echo "Listing all MT103 messages..."
    for file in "$DATABASE_DIR"/*.txt; do
        [ -e "$file" ] || { echo "No MT103 messages found."; return; }
        echo "$(basename "$file")"
    done
}

# Function to view a specific MT103 file
view_mt103() {
    read -p "Enter the filename to view (e.g., 001.txt): " filename
    filepath="${DATABASE_DIR}/${filename}"

    if [ -f "$filepath" ]; then
        echo "Viewing $filename:"
        cat "$filepath"
    else
        echo "File $filename not found."
    fi
}

# Function to delete a specific MT103 file
delete_mt103() {
    read -p "Enter the filename to delete (e.g., 001.txt): " filename
    filepath="${DATABASE_DIR}/${filename}"

    if [ -f "$filepath" ]; then
        rm "$filepath"
        echo "File $filename deleted."
    else
        echo "File $filename not found."
    fi
}

# Main menu
while true; do
    echo "1. Download MT103 Files"
    echo "2. List MT103 Files"
    echo "3. View MT103 File"
    echo "4. Delete MT103 File"
    echo "5. Exit"
    read -p "Choose an option: " option

    case $option in
        1) download_mt103 ;;
        2) list_mt103 ;;
        3) view_mt103 ;;
        4) delete_mt103 ;;
        5) break ;;
        *) echo "Invalid option." ;;
    esac
done

