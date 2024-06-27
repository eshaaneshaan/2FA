#!/bin/bash
clear
trap 'echo "  nice try  "' SIGINT   
trap 'echo "  nice try  "' SIGTSTP
set +m

random_number=$(shuf -i 100000-999999 -n 1)

echo "$random_number" >> /home/eshaan-deshmukh/private/list
cd ~/private
git add --all
git commit -m "message"
git push


while true; do
    if [[ "$1" != "1" ]]; then
        clear
        read -p "locked down, password: " input
    else
        clear
        read -p "locked down, password: " input
    fi
    
    if [[ "$input" == "$random_number" ]]; then
        echo "Confirmation received. Exiting..."
        exit 0
    fi
    if [[ "$input" == "hint" ]]; then
        echo "check private github repo: codes"
        
    fi
done



