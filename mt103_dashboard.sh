#!/bin/bash

# Directory to store MT103 messages
DATABASE_DIR="mt103_database"

# Create the database directory if it doesn't exist
mkdir -p "$DATABASE_DIR"

# Function to create a new MT103 message
create_mt103() {
    echo "Creating a new MT103 message..."
    
    # Prompt for the necessary fields
    read -p "Enter transaction reference: " transaction_reference
    read -p "Enter amount: " amount
    read -p "Enter currency: " currency
    read -p "Enter sender: " sender
    read -p "Enter receiver: " receiver
    read -p "Enter date (YYYY-MM-DD): " date
    read -p "Enter bank code: " bank_code
    read -p "Enter account number: " account_number

    # Check if the transaction reference already exists
    filename="${DATABASE_DIR}/${transaction_reference}.txt"
    if [ -f "$filename" ]; then
        echo "Error: Transaction reference already exists!"
        return
    fi

    # Save the MT103 message to a file
    echo "Transaction Reference: $transaction_reference" > "$filename"
    echo "Amount: $amount" >> "$filename"
    echo "Currency: $currency" >> "$filename"
    echo "Sender: $sender" >> "$filename"
    echo "Receiver: $receiver" >> "$filename"
    echo "Date: $date" >> "$filename"
    echo "Bank Code: $bank_code" >> "$filename"
    echo "Account Number: $account_number" >> "$filename"

    echo "MT103 message saved as $filename"
}

# Function to list all MT103 messages
list_mt103() {
    echo "Listing all MT103 messages..."
    
    # Check if there are any .txt files in the directory
    if ls "$DATABASE_DIR"/*.txt 1> /dev/null 2>&1; then
        for file in "$DATABASE_DIR"/*.txt; do
            echo "$(basename "$file" .txt)"
        done
    else
        echo "No MT103 messages found."
    fi
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

# Function to delete a specific MT103 message
delete_mt103() {
    read -p "Enter transaction reference to delete: " transaction_reference
    filename="${DATABASE_DIR}/${transaction_reference}.txt"

    if [ -f "$filename" ]; then
        rm "$filename"
        echo "MT103 message $transaction_reference deleted."
    else
        echo "MT103 message not found."
    fi
}

# Main menu loop
while true; do
    echo ""
    echo "MT103 Database Menu"
    echo "1. Create new MT103 message"
    echo "2. List all MT103 messages"
    echo "3. View specific MT103 message"
    echo "4. Delete specific MT103 message"
    echo "5. Exit"
    read -p "Choose an option: " option

    case $option in
        1) create_mt103 ;;
        2) list_mt103 ;;
        3) view_mt103 ;;
        4) delete_mt103 ;;
        5) exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
