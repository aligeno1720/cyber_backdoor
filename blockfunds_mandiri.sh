#!/bin/bash

# Directory to store blocked funds data
BLOCKED_FUNDS_DIR="blocked_funds_mandiri"
mkdir -p "$BLOCKED_FUNDS_DIR"

# Function to block funds for a customer
block_funds() {
    echo "Blocking funds for a customer..."

    read -p "Enter Customer ID: " customer_id
    read -p "Enter Account Number: " account_number
    read -p "Enter Blocked Amount: " blocked_amount
    read -p "Enter Reason for Blocking: " reason

    filename="${BLOCKED_FUNDS_DIR}/${customer_id}.txt"
    if [ -f "$filename" ]; then
        echo "Blocked funds record already exists for Customer ID $customer_id."
    else
        echo "Customer ID: $customer_id" > "$filename"
        echo "Account Number: $account_number" >> "$filename"
        echo "Blocked Amount: $blocked_amount" >> "$filename"
        echo "Reason: $reason" >> "$filename"
        echo "Funds blocked successfully."
    fi
}

# Function to list all blocked funds
list_blocked_funds() {
    echo "Listing all blocked funds..."
    for file in "$BLOCKED_FUNDS_DIR"/*.txt; do
        [ -e "$file" ] || { echo "No blocked funds records found."; return; }
        echo "$(basename "$file" .txt)"
    done
}

# Function to view details of blocked funds
view_blocked_funds() {
    read -p "Enter Customer ID to view blocked funds: " customer_id
    filepath="${BLOCKED_FUNDS_DIR}/${customer_id}.txt"

    if [ -f "$filepath" ]; then
        echo "Viewing blocked funds for Customer ID $customer_id:"
        cat "$filepath"
    else
        echo "No blocked funds record found for Customer ID $customer_id."
    fi
}

# Function to unblock funds for a customer
unblock_funds() {
    read -p "Enter Customer ID to unblock funds: " customer_id
    filepath="${BLOCKED_FUNDS_DIR}/${customer_id}.txt"

    if [ -f "$filepath" ]; then
        rm "$filepath"
        echo "Blocked funds record for Customer ID $customer_id has been removed."
    else
        echo "No blocked funds record found for Customer ID $customer_id."
    fi
}

# Function to update the blocked amount or reason
update_blocked_funds() {
    read -p "Enter Customer ID to update blocked funds: " customer_id
    filepath="${BLOCKED_FUNDS_DIR}/${customer_id}.txt"

    if [ -f "$filepath" ]; then
        echo "Updating blocked funds for Customer ID $customer_id..."
        
        read -p "Enter new blocked amount (leave blank to keep current): " new_blocked_amount
        read -p "Enter new reason for blocking (leave blank to keep current): " new_reason
        
        if [ -n "$new_blocked_amount" ]; then
            sed -i "/^Blocked Amount:/c\Blocked Amount: $new_blocked_amount" "$filepath"
        fi
        
        if [ -n "$new_reason" ]; then
            sed -i "/^Reason:/c\Reason: $new_reason" "$filepath"
        fi
        
        echo "Blocked funds record updated successfully."
    else
        echo "No blocked funds record found for Customer ID $customer_id."
    fi
}

# Main menu
while true; do
    echo "1. Block Funds"
    echo "2. List Blocked Funds"
    echo "3. View Blocked Funds"
    echo "4. Unblock Funds"
    echo "5. Update Blocked Funds"
    echo "6. Exit"
    read -p "Choose an option: " option

    case $option in
        1) block_funds ;;
        2) list_blocked_funds ;;
        3) view_blocked_funds ;;
        4) unblock_funds ;;
        5) update_blocked_funds ;;
        6) break ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
