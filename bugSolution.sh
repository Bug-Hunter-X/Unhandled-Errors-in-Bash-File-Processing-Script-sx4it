#!/bin/bash

# Improved script with proper error handling

input_file="my_file.txt"

# Set the "errexit" option to immediately exit on any command failure
set -e

# Function to process the file with robust error checks
process_file() {
  if [[ ! -f "$input_file" ]]; then
    echo "Error: Input file '$input_file' not found."
    exit 1
  fi
  # Process the file, handling potential errors
  cat "$input_file" | awk '{print $1}' || {
    echo "Error: An error occurred while processing the file."
    exit 1
  }
}

# Call the function, and check the return status
process_file

if [[ $? -eq 0 ]]; then
  echo "File processed successfully."
fi