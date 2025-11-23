#!/bin/bash

#Author: Abdullah Javed

# DeelTech Solutions - Manual User Entry
# Adds a user to the shared faculty list

# The file where scraper saves names
NAMES_FILE="faculty_names.txt"

echo "--- Manual User Entry ---"

# 1. Get First Name
read -p "Enter First Name: " first_name

# 2. Get Last Name
read -p "Enter Last Name: " last_name

# 3. Validation: Ensure fields are not empty
if [[ -z "$first_name" || -z "$last_name" ]]; then
    echo "[ERROR] Names cannot be empty."
    exit 1
fi

# 4. Save to the same file as the scraper
# We use '>>' to append to the bottom of the file without overwriting it
echo "$first_name $last_name" >> "$NAMES_FILE"

echo "[SUCCESS] Added '$first_name $last_name' to $NAMES_FILE"