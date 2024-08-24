#!/bin/bash

# Directory to store MT103 transactions
DATABASE_DIR="mt103_transactions"
mkdir -p "$DATABASE_DIR"

# Function to create an MT103 transaction
create_mt103_transaction() {
    echo "Creating MT103 transaction..."

    read -p "Enter Transaction Reference Number (20): " transaction_reference
    read -p "Enter Value Date (YYMMDD) (32A): " value_date
    read -p "Enter Currency (32A): " currency
    read -p "Enter Amount (32A): " amount
    read -p "Enter Sender Bank (50A): " sender_bank
    read -p "Enter Receiver Bank (59): " receiver_bank
    read -p "Enter Sender Account Number (50A): " sender_account
    read -p "Enter Receiver Account Number (59): " receiver_account

    # Construct MT103 message
    mt103_message=":20:$transaction_reference\n"
    mt103_message+=":32A:$value_date$currency$amount\n"
    mt103_message+=":50A:$sender_bank\n"
    mt103_message+=":59:$receiver_bank\n"
    mt103_message+=":70:Payment for Invoice\n"  # Payment details (Optional)
    mt103_message+=":50A:$sender_account\n"  # Sender's account number
    mt103_message+=":59:$receiver_account\n"  # Receiver's account number

    # Save the MT103 message to a file
    filename="${DATABASE_DIR}/${transaction_reference}.txt"
    echo -e "$mt103_message" > "$filename"

    echo "MT103 transaction saved as $filename"
}

# Function to list all MT103 transactions
list_mt103_transactions() {
    echo "Listing all MT103 transactions..."
    for file in "$DATABASE_DIR"/*.txt; do
        [ -e "$file" ] || { echo "No MT103 transactions found."; return; }
        echo "$(basename "$file" .txt)"
    done
}

# Function to view a specific MT103 transaction
view_mt103_transaction() {
    read -p "Enter transaction reference to view (e.g., 123456.txt): " transaction_reference
    filepath="${DATABASE_DIR}/${transaction_reference}"

    if [ -f "$filepath" ]; then
        echo "Viewing $transaction_reference:"
        cat "$filepath"
    else
        echo "Transaction $transaction_reference not found."
    fi
}

# Function to simulate sending the MT103 transaction to Bank Mandiri
send_to_bank_mandiri() {
    read -p "Enter transaction reference to send (e.g., 123456.txt): " transaction_reference
    filepath="${DATABASE_DIR}/${transaction_reference}"

    if [ -f "$filepath" ]; then
        echo "Sending $transaction_reference to Bank Mandiri..."
        # Simulate sending by just printing the message
        cat "$filepath"
        echo "Transaction $transaction_reference sent to Bank Mandiri."
    else
        echo "Transaction $transaction_reference not found."
    fi
}

# Main menu
while true; do
    echo "1. Create MT103 Transaction"
    echo "2. List MT103 Transactions"
    echo "3. View MT103 Transaction"
    echo "4. Send MT103 Transaction to Bank Mandiri Indonesia"
    echo "5. Exit"
    read -p "Choose an option: " option

    case $option in
        1) create_mt103_transaction ;;
        2) list_mt103_transactions ;;
        3) view_mt103_transaction ;;
        4) send_to_bank_mandiri_indonesia ;;
        5) break ;;
        *) echo "Invalid option." ;;
    esac
done
