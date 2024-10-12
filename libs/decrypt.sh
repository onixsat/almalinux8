#!/bin/bash
#bash libs/decrypt.sh config/config.sh.enc 12345
# Check if the correct number of arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file to decrypt> <passphrase>"
    exit 1
fi

ENCRYPTED_FILE=$1
PASSPHRASE=$2
DECRYPTED_FILE="${ENCRYPTED_FILE%.enc}"

# Decrypt the file with PBKDF2 and the specified number of iterations
openssl enc -aes-256-cbc -d -salt -pbkdf2 -iter 10000 -in "$ENCRYPTED_FILE" -out "$DECRYPTED_FILE" -pass pass:"$PASSPHRASE"

if [ $? -eq 0 ]; then
    echo "File decrypted successfully: $DECRYPTED_FILE"
else
    echo "Decryption failed"
    exit 1
fi