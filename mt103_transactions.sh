#!/bin/bash

Format_transactions_mt103() {
    echo "MT103 transaction format..."

    # Prompt for MT103 fields
    read -p "Transaction Reference Number (20): " transaction_reference
    read -p "Related Reference (21): " related_reference
    read -p "Bank Operation Code (23B): " bank_operation_code
    read -p "Value Date (YYMMDD) (32A): " value_date
    read -p "Currency (32A): " currency
    read -p "Amount (32A): " amount
    read -p "Ordering Customer (50K): " ordering_customer
    read -p "Ordering Institution (52A): " ordering_institution
    read -p "Sender's Correspondent (53A): " sender_correspondent
    read -p "Receiver's Correspondent (54A): " receiver_correspondent
    read -p "Beneficiary Institution (57A): " beneficiary_institution
    read -p "Account with Institution (58A): " account_with_institution
    read -p "Beneficiary Customer (59): " beneficiary_customer
    read -p "Remittance Information (70): " remittance_information
    read -p "Details of Charges (71A): " details_of_charges
    read -p "Sender to Receiver Information (72): " sender_to_receiver

    # Build the MT103 message format
    mt103_message=":20:$transaction_reference\n"
    mt103_message+=":21:$related_reference\n"
    mt103_message+=":23B:$bank_operation_code\n"
    mt103_message+=":32A:$value_date$currency$amount\n"
    mt103_message+=":50K:$ordering_customer\n"
    mt103_message+=":52A:$ordering_institution\n"
    mt103_message+=":53A:$sender_correspondent\n"
    mt103_message+=":54A:$receiver_correspondent\n"
    mt103_message+=":57A:$beneficiary_institution\n"
    mt103_message+=":58A:$account_with_institution\n"
    mt103_message+=":59:$beneficiary_customer\n"
    mt103_message+=":70:$remittance_information\n"
    mt103_message+=":71A:$details_of_charges\n"
    mt103_message+=":72:$sender_to_receiver\n"

    # Save the MT103 message to a file
    filename="${DATABASE_DIR}/${transaction_reference}.txt"
    echo -e "$mt103_message" > "$filename"

    echo "MT103 message saved as $filename"
}

# Main execution
Format_transactions_mt103

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

list_mt103() {
    echo "Listing all MT103 messages..."

    if ls "$DATABASE_DIR"/*.txt 1> /dev/null 2>&1; then
        for file in "$DATABASE_DIR"/*.txt; do
            echo "$(basename "$file" .txt)"
        done
    else
        echo "No MT103 messages found."
    fi
}

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

#!/bin/bash

DATABASE_DIR="mt103_database"
mkdir -p "$DATABASE_DIR"

Format_transactions_mt103() {
    echo "MT103 transaction format..."

    read -p "Transaction Reference Number (20): " transaction_reference
    read -p "Related Reference (21): " related_reference
    read -p "Bank Operation Code (23B): " bank_operation_code
    read -p "Value Date (YYMMDD) (32A): " value_date
    read -p "Currency (32A): " currency
    read -p "Amount (32A): " amount
    read -p "Ordering Customer (50K): " ordering_customer
    read -p "Ordering Institution (52A): " ordering_institution
    read -p "Sender's Correspondent (53A): " sender_correspondent
    read -p "Receiver's Correspondent (54A): " receiver_correspondent
    read -p "Beneficiary Institution (57A): " beneficiary_institution
    read -p "Account with Institution (58A): " account_with_institution
    read -p "Beneficiary Customer (59): " beneficiary_customer
    read -p "Remittance Information (70): " remittance_information
    read -p "Details of Charges (71A): " details_of_charges
    read -p "Sender to Receiver Information (72): " sender_to_receiver

    mt103_message=":20:$transaction_reference\n"
    mt103_message+=":21:$related_reference\n"
    mt103_message+=":23B:$bank_operation_code\n"
    mt103_message+=":32A:$value_date$currency$amount\n"
    mt103_message+=":50K:$ordering_customer\n"
    mt103_message+=":52A:$ordering_institution\n"
    mt103_message+=":53A:$sender_correspondent\n"
    mt103_message+=":54A:$receiver_correspondent\n"
    mt103_message+=":57A:$beneficiary_institution\n"
    mt103_message+=":58A:$account_with_institution\n"
    mt103_message+=":59:$beneficiary_customer\n"
    mt103_message+=":70:$remittance_information\n"
    mt103_message+=":71A:$details_of_charges\n"
    mt103_message+=":72:$sender_to_receiver\n"

    filename="${DATABASE_DIR}/${transaction_reference}.txt"
    echo -e "$mt103_message" > "$filename"

    echo "MT103 message saved as $filename"
}

list_mt103() {
    echo "Listing all MT103 messages..."

    if ls "$DATABASE_DIR"/*.txt 1> /dev/null 2>&1; then
        for file in "$DATABASE_DIR"/*.txt; do
            echo "$(basename "$file" .txt)"
        done
    else
        echo "No MT103 messages found."
    fi
}

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

while true; do
    echo "1. MT103 Transaction"
    echo "2. List MT103 Transactions"
    echo "3. View MT103 Transaction"
    echo "4. Delete MT103 Transaction"
    echo "5. Exit"
    read -p "Choose an option: " option

    case $option in
        1) simulate_mt103 ;;
        2) list_mt103 ;;
        3) view_mt103 ;;
        4) delete_mt103 ;;
        5) break ;;
        *) echo "Invalid option." ;;
    esac
done
