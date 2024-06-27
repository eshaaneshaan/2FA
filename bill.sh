#!/bin/bash
clear
trap 'echo "  nice try  "' SIGINT   
trap 'echo "  nice try  "' SIGTSTP
trap 'echo " nice try "' SIGQUIT
set +m

random_number=$(shuf -i 100000-999999 -n 1)
rm -rf /home/eshaan-deshmukh/private/list
echo "$random_number" > /home/eshaan-deshmukh/private/list
cd ~/private
git add --all
git commit -m "message"
git push

center_text() {
    local text="$1"
    local termwidth=$(tput cols)
    local termheight=$(tput lines)
    local textwidth=${#text}
    local x=$(( (termwidth - textwidth) / 2 ))
    local y=$(( termheight / 2 ))
    tput cup $y $x
    echo -n "$text"
}

center_cursor() {
    local termwidth=$(tput cols)
    local termheight=$(tput lines)
    local x=$(( termwidth / 2 ))
    local y=$(( termheight / 2 + 1 ))  

    tput cup $y $x
}

while true; do
    clear
    echo "v1.7"
    center_text "eshaan's silly 2FA:"
    center_cursor
    read input
    
    if [[ "$input" == "$random_number" ]]; then
        echo "k ur good"
        echo "unlocked" > /home/eshaan-deshmukh/private/list
        cd ~/private
        git add --all
        git commit -m "message"
        git push
        
        mv ~/.merlinSecure ~/.oldSecureLog/."$random_number"
        exit 0
    elif [[ "$input" != "$random_number" ]]; then
        gh issue create -R eshaaneshaan/dir -t "2FA failed attempt" -b "A failed attempt to login with 2FA occured on your codermerlin account." >> log.log.log
    fi
done
