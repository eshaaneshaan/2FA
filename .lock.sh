#!/bin/bash
clear
trap '' SIGINT   
trap '' SIGTSTP
set +m

random_number=$(shuf -i 100000-999999 -n 1)
rm -rf ~/.private/list
echo "$random_number" > ~/.private/list
cd ~/.private
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

    if [[ "$1" != "1" ]]; then
        clear
        echo "v1.7"
        center_text "silly 2FA:"
        center_cursor
        read input
    else
        clear
        echo "v1.7"
        center_text "silly 2FA:"
        center_cursor
        read input
    fi
    
    if [[ "$input" == "$random_number" ]]; then
        echo "k ur good"
        echo "unlocked" > ~/.private/list
        cd ~/.private
        git add --all
        git commit -m "message"
        git push
        
        
        exit 0
    elif [[ "$input" != "$random_number" ]]; then
        gh issue create -R eshaaneshaan/dir -t "2FA failed attempt" -b "A failed attempt to login with 2FA occured on your codermerlin account." >> log.log.log
    fi
done
