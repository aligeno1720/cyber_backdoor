#!/bin/bash

DATABASE_DIR="deutsche_bank_accounts"
mkdir -p "$DATABASE_DIR"

# Function to add a new account
add_account() {
    echo "Adding a new account..."

    read -p "Enter Account Number: " account_number
    read -p "Enter Account Holder Name: " account_holder_name
    read -p "Enter Initial Balance: " balance

    filename="${DATABASE_DIR}/${account_number}.txt"
    if [ -f "$filename" ]; then
        echo "Account number $account_number already exists."
    else
        echo "Account Number: $account_number" > "$filename"
        echo "Account Holder: $account_holder_name" >> "$filename"
        echo "Balance: $balance" >> "$filename"
        echo "Account added successfully."
    fi
}

# Function to list all accounts
list_accounts() {
    echo "Listing all accounts..."
    for file in "$DATABASE_DIR"/*.txt; do
        [ -e "$file" ] || { echo "No accounts found."; return; }
        echo "$(basename "$file" .txt)"
    done
}

# Function to view account details
view_account() {
    read -p "Enter Account Number to view: " account_number
    filepath="${DATABASE_DIR}/${account_number}.txt"

    if [ -f "$filepath" ]; then
        echo "Viewing account $account_number:"
        cat "$filepath"
    else
        echo "Account $account_number not found."
    fi
}

# Function to check the balance of an account
check_balance() {
    read -p "Enter Account Number to check balance: " account_number
    filepath="${DATABASE_DIR}/${account_number}.txt"

    if [ -f "$filepath" ]; then
        balance=$(grep "^Balance:" "$filepath" | awk '{print $2}')
        echo "Balance for account $account_number: $balance"
    else
        echo "Account $account_number not found."
    fi
}

# Main menu
while true; do
    echo "1. Add Account"
    echo "2. List Accounts"
    echo "3. View Account"
    echo "4. Check Balance"
    echo "5. Exit"
    read -p "Choose an option: " option

    case $option in
        1) add_account ;;
        2) list_accounts ;;
        3) view_account ;;
        4) check_balance ;;
        5) break ;;
        *) echo "Invalid option." ;;
    esac
done
