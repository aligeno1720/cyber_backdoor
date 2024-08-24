#!/bin/bash

list_mt103() {
    echo "Listing all MT103 messages..."
    
    # Check if there are any .txt files in the directory
    if ls "$DATABASE_DIR"/*.txt 1> /dev/null 2>&1; then
        # Loop through each file and print the base name (transaction reference)
        for file in "$DATABASE_DIR"/*.txt; do
            echo "$(basename "$file" .txt)"
        done
    else
        echo "No MT103 messages found."
    fi
}

#!/bin/bash

# Directory to store MT103 messages
DATABASE_DIR="mt103_database"

# Create the database directory if it doesn't exist
mkdir -p "$DATABASE_DIR"

# Function to create a new MT103 message
create_mt103() {
    echo "Creating a new MT103 message..."
    
    read -p "Enter transaction reference: " transaction_reference
    read -p "Enter amount: " amount
    read -p "Enter currency: " currency
    read -p "Enter sender: " sender
    read -p "Enter receiver: " receiver
    read -p "Enter date (YYYY-MM-DD): " date

    filename="${DATABASE_DIR}/${transaction_reference}.txt"
    
    echo "Transaction Reference: $transaction_reference" > "$filename"
    echo "Amount: $amount" >> "$filename"
    echo "Currency: $currency" >> "$filename"
    echo "Sender: $sender" >> "$filename"
    echo "Receiver: $receiver" >> "$filename"
    echo "Date: $date" >> "$filename"

    echo "MT103 message saved as $filename"
}

# Function to list all MT103 messages
list_mt103() {
    echo "Listing all MT103 messages..."
    for file in "$DATABASE_DIR"/*.txt; do
        [ -e "$file" ] || { echo "No MT103 messages found."; return; }
        echo "$(basename "$file" .txt)"
    done
}

# Function to view a specific MT103 message
view_mt103() {
    read -p "Enter transaction reference to view: " transaction_reference
    filename="${DATABASE_DIR}/${transaction_reference}.txt"

    if [ -f "$filename" ]; then
        echo "Displaying MT103 message for $transaction_reference:"
        cat "$filename"
    else
        echo "MT103 message not found."
    fi
}

# Main menu loop
while true; do
    echo "MT103 Database Menu"
    echo "1. Create new MT103 message"
    echo "2. List all MT103 messages"
    echo "3. View specific MT103 message"
    echo "4. Exit"
    read -p "Choose an option: " option

    case $option in
        1) create_mt103 ;;
        2) list_mt103 ;;
        3) view_mt103 ;;
        4) exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
