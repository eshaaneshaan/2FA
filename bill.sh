#!/bin/bash

#!/bin/bash

# Function to bring the script back to foreground
bring_to_foreground() {
    fg %-
}

# Continuously check if the script is in the background and bring it back to foreground
while true; do
    if [[ $(jobs -l | grep -c Stopped) -ne 0 ]]; then
        bring_to_foreground
    fi
    sleep 1
done

# Your script logic goes here
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

# Infinite loop to keep the script running
while true; do
    sleep 1
    echo "Script is still running..."
done




