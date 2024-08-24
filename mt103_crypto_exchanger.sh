#!/bin/bash

DATABASE_DIR="mt103_database"
mkdir -p "$DATABASE_DIR"

simulate_mt103() {
    echo "MT103 transaction format..."

    read -p "Transaction Reference Number (20): " transaction_reference
    read -p "Value Date (YYMMDD) (32A): " value_date
    read -p "Currency (32A): " currency
    read -p "Amount (32A): " amount
    read -p "Beneficiary Customer (59): " beneficiary_customer

    mt103_message=":20:$transaction_reference\n"
    mt103_message+=":32A:$value_date$currency$amount\n"
    mt103_message+=":59:$beneficiary_customer\n"

    filename="${DATABASE_DIR}/${transaction_reference}.txt"
    echo -e "$mt103_message" > "$filename"

    echo "MT103 message saved as $filename"
}

parse_mt103() {
    read -p "Enter transaction reference to parse: " transaction_reference
    filename="${DATABASE_DIR}/${transaction_reference}.txt"
    
    if [ -f "$filename" ]; then
        echo "Parsing MT103 message..."
        amount=$(grep ":32A:" "$filename" | cut -d':' -f3 | sed 's/[^0-9.]//g')
        beneficiary=$(grep ":59:" "$filename" | cut -d':' -f3-)
        
        echo "Amount: $amount"
        echo "Beneficiary: $beneficiary"
    else
        echo "MT103 message not found."
    fi
}

create_crypto_transaction() {
    parse_mt103

    # Here, we assume beneficiary is a crypto address.
    crypto_address=$beneficiary

    echo "Creating cryptocurrency transaction..."
    
    # Simulate creating a transaction (for Bitcoin-like cryptocurrency)
    transaction_data=$(cat <<EOF
{
    "amount": "$amount",
    "to_address": "$crypto_address",
    "currency": "BTC"
}
EOF
    )

    echo "Transaction Data:"
    echo "$transaction_data"

    # Save the transaction data to a file
    transaction_file="${DATABASE_DIR}/${transaction_reference}_crypto.json"
    echo "$transaction_data" > "$transaction_file"
    
    echo "Transaction saved as $transaction_file"
}

broadcast_transaction() {
    read -p "Enter transaction reference to broadcast: " transaction_reference
    transaction_file="${DATABASE_DIR}/${transaction_reference}_crypto.json"
    
    if [ -f "$transaction_file" ]; then
        echo "Broadcasting transaction..."
        # Simulate an API call to a cryptocurrency network
        # Replace this with a real API endpoint if necessary
        response=$(curl -s -X POST -H "Content-Type: application/json" \
            -d @"$transaction_file" "https://api.mockcryptoservice.com/broadcast")

        echo "Response from network: $response"
    else
        echo "Transaction not found."
    fi
}

#!/bin/bash

DATABASE_DIR="mt103_database"
mkdir -p "$DATABASE_DIR"

simulate_mt103() {
    echo "MT103 transaction format..."

    read -p "Transaction Reference Number (20): " transaction_reference
    read -p "Value Date (YYMMDD) (32A): " value_date
    read -p "Currency (32A): " currency
    read -p "Amount (32A): " amount
    read -p "Beneficiary Customer (59): " beneficiary_customer

    mt103_message=":20:$transaction_reference\n"
    mt103_message+=":32A:$value_date$currency$amount\n"
    mt103_message+=":59:$beneficiary_customer\n"

    filename="${DATABASE_DIR}/${transaction_reference}.txt"
    echo -e "$mt103_message" > "$filename"

    echo "MT103 message saved as $filename"
}

parse_mt103() {
    read -p "Enter transaction reference to parse: " transaction_reference
    filename="${DATABASE_DIR}/${transaction_reference}.txt"
    
    if [ -f "$filename" ]; then
        echo "Parsing MT103 message..."
        amount=$(grep ":32A:" "$filename" | cut -d':' -f3 | sed 's/[^0-9.]//g')
        beneficiary=$(grep ":59:" "$filename" | cut -d':' -f3-)
        
        echo "Amount: $amount"
        echo "Beneficiary: $beneficiary"
    else
        echo "MT103 message not found."
    fi
}

create_crypto_transaction() {
    parse_mt103

    crypto_address=$beneficiary

    echo "Creating cryptocurrency transaction..."
    
    transaction_data=$(cat <<EOF
{
    "amount": "$amount",
    "to_address": "$crypto_address",
    "currency": "BTC"
}
EOF
    )

    echo "Transaction Data:"
    echo "$transaction_data"

    transaction_file="${DATABASE_DIR}/${transaction_reference}_crypto.json"
    echo "$transaction_data" > "$transaction_file"
    
    echo "Transaction saved as $transaction_file"
}

broadcast_transaction() {
    read -p "Enter transaction reference to broadcast: " transaction_reference
    transaction_file="${DATABASE_DIR}/${transaction_reference}_crypto.json"
    
    if [ -f "$transaction_file" ]; then
        echo "Broadcasting transaction..."
        response=$(curl -s -X POST -H "Content-Type: application/json" \
            -d @"$transaction_file" "https://api.mockcryptoservice.com/broadcast")

        echo "Response from network: $response"
    else
        echo "Transaction not found."
    fi
}

while true; do
    echo "1. MT103 Transaction"
    echo "2. Parse MT103 Transaction"
    echo "3. Create Cryptocurrency Transaction"
    echo "4. Broadcast Cryptocurrency Transaction"
    echo "5. Exit"
    read -p "Choose an option: " option

    case $option in
        1) simulate_mt103 ;;
        2) parse_mt103 ;;
        3) create_crypto_transaction ;;
        4) broadcast_transaction ;;
        5) break ;;
        *) echo "Invalid option." ;;
    esac
done

