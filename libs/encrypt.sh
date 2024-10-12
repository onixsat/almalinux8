#!/bin/bash

# bash libs/encrypt.sh config/config.sh 12345 delete

FILE=$1
PASSPHRASE=$2
SECURE_DELETE=$3
ENCRYPTED_FILE="${FILE}.enc"

# Encrypt the file
openssl enc -aes-256-cbc -salt -pbkdf2 -iter 10000 -in "$FILE" -out "$ENCRYPTED_FILE" -pass pass:"$PASSPHRASE"

if [ $? -eq 0 ]; then
    echo "File encrypted successfully: $ENCRYPTED_FILE"
else
    echo "Encryption failed"
    exit 1
fi

# Securely delete the original file if requested
if [ "$SECURE_DELETE" = "delete" ]; then
    # Overwrite the file with random data
    openssl rand -out "$FILE" $(stat --format=%s "$FILE")
    # Optionally, overwrite multiple times for extra security

    # Remove the file
    rm -f "$FILE"

    if [ $? -eq 0 ]; then
        echo "Original file securely deleted."
    else
        echo "Failed to securely delete the original file."
        exit 1
    fi
fi