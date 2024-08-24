#!/bin/bash

# Directory to store MT103 transaction data
MT103_DIR="mt103_database"
mkdir -p "$MT103_DIR"

# Function to validate a positive number
is_valid_amount() {
    [[ $1 =~ ^[0-9]+(\.[0-9]+)?$ ]] && [[ $(echo "$1 >= 0" | bc) -eq 1 ]]
}

# Function to create an MT103 transaction record
create_transaction() {
    echo "Creating an MT103 transaction record..."

    read -p "Enter Transaction ID: " transaction_id
    read -p "Enter Sender's Bank: " sender_bank
    read -p "Enter Receiver's Bank: " receiver_bank
    read -p "Enter Amount: " amount
    read -p "Enter Currency: " currency
    read -p "Enter Date: " date
    read -p "Enter Transaction Reference: " transaction_reference

    filename="${MT103_DIR}/${transaction_id}.txt"
    if [ -f "$filename" ]; then
        echo "Transaction record already exists for Transaction ID $transaction_id."
    else
        echo "Transaction ID: $transaction_id" > "$filename"
        echo "Sender's Bank: $sender_bank" >> "$filename"
        echo "Receiver's Bank: $receiver_bank" >> "$filename"
        echo "Amount: $amount" >> "$filename"
        echo "Currency: $currency" >> "$filename"
        echo "Date: $date" >> "$filename"
        echo "Transaction Reference: $transaction_reference" >> "$filename"
        echo "Transaction record created successfully."
    fi
}

# Function to list all MT103 transactions
list_transactions() {
    echo "Listing all MT103 transactions..."
    for file in "$MT103_DIR"/*.txt; do
        [ -e "$file" ] || { echo "No MT103 transactions found."; return; }
        echo "$(basename "$file" .txt)"
    done
}

# Function to view details of a specific MT103 transaction
view_transaction() {
    read -p "Enter Transaction ID to view details: " transaction_id
    filepath="${MT103_DIR}/${transaction_id}.txt"

    if [ -f "$filepath" ]; then
        echo "Viewing MT103 transaction details for Transaction ID $transaction_id:"
        cat "$filepath"
    else
        echo "No MT103 transaction record found for Transaction ID $transaction_id."
    fi
}

# Function to update an MT103 transaction record
update_transaction() {
    read -p "Enter Transaction ID to update: " transaction_id
    filepath="${MT103_DIR}/${transaction_id}.txt"

    if [ -f "$filepath" ]; then
        echo "Updating MT103 transaction record for Transaction ID $transaction_id..."

        read -p "Enter new Sender's Bank (leave blank to keep current): " new_sender_bank
        read -p "Enter new Receiver's Bank (leave blank to keep current): " new_receiver_bank
        read -p "Enter new Amount (leave blank to keep current): " new_amount
        read -p "Enter new Currency (leave blank to keep current): " new_currency
        read -p "Enter new Date (leave blank to keep current): " new_date
        read -p "Enter new Transaction Reference (leave blank to keep current): " new_transaction_reference

        if [ -n "$new_sender_bank" ]; then
            sed -i "/^Sender's Bank:/c\Sender's Bank: $new_sender_bank" "$filepath"
        fi
        
        if [ -n "$new_receiver_bank" ]; then
            sed -i "/^Receiver's Bank:/c\Receiver's Bank: $new_receiver_bank" "$filepath"
        fi
        
        if [ -n "$new_amount" ]; then
            if is_valid_amount "$new_amount"; then
                sed -i "/^Amount:/c\Amount: $new_amount" "$filepath"
            else
                echo "Invalid amount. Update failed."
                return
            fi
        fi
        
        if [ -n "$new_currency" ]; then
            sed -i "/^Currency:/c\Currency: $new_currency" "$filepath"
        fi
        
        if [ -n "$new_date" ]; then
            sed -i "/^Date:/c\Date: $new_date" "$filepath"
        fi
        
        if [ -n "$new_transaction_reference" ]; then
            sed -i "/^Transaction Reference:/c\Transaction Reference: $new_transaction_reference" "$filepath"
        fi

        echo "Transaction record updated successfully."
    else
        echo "No MT103 transaction record found for Transaction ID $transaction_id."
    fi
}

# Function to delete an MT103 transaction record
delete_transaction() {
    read -p "Enter Transaction ID to delete: " transaction_id
    filepath="${MT103_DIR}/${transaction_id}.txt"

    if [ -f "$filepath" ]; then
        rm "$filepath"
        echo "MT103 transaction record for Transaction ID $transaction_id has been deleted."
    else
        echo "No MT103 transaction record found for Transaction ID $transaction_id."
    fi
}

# Main menu
while true; do
    echo "1. Create Transaction"
    echo "2. List Transactions"
    echo "3. View Transaction Details"
    echo "4. Update Transaction"
    echo "5. Delete Transaction"
    echo "6. Exit"
    read -p "Choose an option: " option

    case $option in
        1) create_transaction ;;
        2) list_transactions ;;
        3) view_transaction ;;
        4) update_transaction ;;
        5) delete_transaction ;;
        6) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
