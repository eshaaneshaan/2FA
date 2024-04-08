#!/bin/bash
clear
trap 'echo "  nice try  "' SIGINT   
trap 'echo "  nice try  "' SIGTSTP

random_number=$(shuf -i 100000-999999 -n 1)

echo "$random_number" >> /home/eshaan-deshmukh/out

while true; do
    if [[ "$1" != "1" ]]; then
        read -p "You owe me $1 dollars for $2. This text will not go away until you pay. " input
    else
        read -p "You owe me $1 dollar for $2. This text will not go away until you pay. " input
    fi
    
    if [[ "$input" == "$random_number" ]]; then
        echo "Confirmation received. Exiting..."
        exit 0
    fi
done
