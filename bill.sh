#!/bin/bash
clear
trap 'echo "  nice try  "' SIGINT   
trap 'echo "  nice try  "' SIGTSTP
set +m

random_number=$(shuf -i 100000-999999 -n 1)

echo "$random_number" >> /home/eshaan-deshmukh/out

while true; do
    if [[ "$1" != "1" ]]; then
        read -p "locked" input
        #5...7...
    else
        read -p "locked" input
    fi
    
    if [[ "$input" == "1224" ]]; then
        echo "Confirmation received. Exiting..."
        exit 0
    fi
    if [[ "$input" == "hint" ]]; then
        echo "old phone pass"
        
    fi
done



