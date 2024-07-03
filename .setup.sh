git clone https://github.com/"$3"/"$2" ~/.private
touch ~/.private/log.log.log
mv ./.lock.sh ~/.lock.sh
mv ./.bashrc_ins ~/.brc_extra
chmod +x ~/.brc_extra
chmod +x ~/.lock.sh
chmod +x ./.process_lock
printf "\nalias lock=\"~/.2FA/.process_lock\"\nalias secure-lock=\"~/.secure.sh\"\n" >> ~/.bashrc
echo "~/.brc_extra" >> ~/.bashrc
~/.brc_extra
