git clone https://github.com/"$1"/"$2" ~/.private
mv ./.lock.sh ~/.lock.sh
mv ./.bashrc_ins ~/.brc_extra
chmod +x ~/.brc_extra
chmod +x ~/.lock.sh
echo "~/.brc_extra" >> ~/.bashrc
source ~/.bashrc