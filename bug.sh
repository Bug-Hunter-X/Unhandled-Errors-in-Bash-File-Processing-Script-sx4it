#!/bin/bash

# This script attempts to process a file, but it may fail due to improper error handling.

input_file="my_file.txt"

# Attempt to process the file
process_file() {
  if [[ ! -f "$input_file" ]]; then
    echo "Error: File not found."
    exit 1
  fi
  #some commands to process the file
  cat $input_file | awk '{print $1}'
}

# Call the function
process_file

# Continue execution even if process_file fails
echo "Script execution continues after file processing..."