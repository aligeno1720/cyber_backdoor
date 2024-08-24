#!/bin/bash

# Define default values for script arguments
TARGET=""
OUTPUT_DIR="testssl_results"
TESTSSL_PATH="./testssl.sh"  # Adjust if using direct download

# Function to display usage information
usage() {
    echo "Usage: $0 -t <target>"
    echo "  -t <target>     Target domain or IP address (required)"
    exit 1
}

# Parse command-line arguments
while getopts "t:" opt; do
    case $opt in
        t) TARGET=$OPTARG ;;
        *) usage ;;
    esac
done

# Check if target is provided
if [ -z "$TARGET" ]; then
    echo "Error: Target is required."
    usage
fi

# Create output directory if it does not exist
mkdir -p "$OUTPUT_DIR"

# Run testssl.sh
echo "Running testssl.sh on $TARGET..."
"$TESTSSL_PATH" "$TARGET" > "${OUTPUT_DIR}/testssl_${TARGET//:/_}.log"

# Check if testssl.sh finished successfully
if [ $? -eq 0 ]; then
    echo "testssl.sh scan completed. Results saved in ${OUTPUT_DIR}/testssl_${TARGET//:/_}.log"
else
    echo "testssl.sh scan failed."
fi
