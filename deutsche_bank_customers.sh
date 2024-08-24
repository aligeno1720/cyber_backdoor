#!/bin/bash

# Directory to store customer data
DATABASE_DIR="deutsche_bank_customers"
mkdir -p "$DATABASE_DIR"

# Function to add a new customer
add_customer() {
    echo "Adding a new customer..."

    read -p "Enter Customer ID: " customer_id
    read -p "Enter Name: " name
    read -p "Enter Account Number: " account_number
    read -p "Enter Initial Balance: " balance

    filename="${DATABASE_DIR}/${customer_id}.txt"
    if [ -f "$filename" ]; then
        echo "Customer ID $customer_id already exists."
    else
        echo "Customer ID: $customer_id" > "$filename"
        echo "Name: $name" >> "$filename"
        echo "Account Number: $account_number" >> "$filename"
        echo "Balance: $balance" >> "$filename"
        echo "Customer added successfully."
    fi
}

# Function to list all customers
list_customers() {
    echo "Listing all customers..."
    for file in "$DATABASE_DIR"/*.txt; do
        [ -e "$file" ] || { echo "No customers found."; return; }
        echo "$(basename "$file" .txt)"
    done
}

# Function to view a specific customer
view_customer() {
    read -p "Enter Customer ID to view: " customer_id
    filepath="${DATABASE_DIR}/${customer_id}.txt"

    if [ -f "$filepath" ]; then
        echo "Viewing customer $customer_id:"
        cat "$filepath"
    else
        echo "Customer $customer_id not found."
    fi
}

# Function to update a customer's balance
update_balance() {
    read -p "Enter Customer ID to update balance: " customer_id
    filepath="${DATABASE_DIR}/${customer_id}.txt"

    if [ -f "$filepath" ]; then
        read -p "Enter new balance: " new_balance
        sed -i "/^Balance:/c\Balance: $new_balance" "$filepath"
        echo "Balance updated successfully for customer $customer_id."
    else
        echo "Customer $customer_id not found."
    fi
}

# Function to delete a customer
delete_customer() {
    read -p "Enter Customer ID to delete: " customer_id
    filepath="${DATABASE_DIR}/${customer_id}.txt"

    if [ -f "$filepath" ]; then
        rm "$filepath"
        echo "Customer $customer_id deleted successfully."
    else
        echo "Customer $customer_id not found."
    fi
}

# Main menu
while true; do
    echo "1. Add Customer"
    echo "2. List Customers"
    echo "3. View Customer"
    echo "4. Update Customer Balance"
    echo "5. Delete Customer"
    echo "6. Exit"
    read -p "Choose an option: " option

    case $option in
        1) add_customer ;;
        2) list_customers ;;
        3) view_customer ;;
        4) update_balance ;;
        5) delete_customer ;;
        6) break ;;
        *) echo "Invalid option." ;;
    esac
done
