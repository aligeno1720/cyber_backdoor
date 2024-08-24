#!/bin/bash

# Define the path to the Python script
PYTHON_SCRIPT="1390071171171.py"

# Check if the Python script exists
if [ ! -f "$PYTHON_SCRIPT" ]; then
    echo "Error: Python script $PYTHON_SCRIPT not found."
    exit 1
fi

# Run the Python script
echo "Running Python script: $PYTHON_SCRIPT"
python3 "$PYTHON_SCRIPT" "$@"
