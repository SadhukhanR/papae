#!/bin/bash 

#colours
red='\e[1;31m'
black='\e[1;30m'
green='\e[1;32m'
cayan='\e[1;36m'
yellow='\e[1;33m'
white='\e[1;37m'
reset='\e[1;0m'
cd ~
echo -e $yellow
apt install wget
echo -e $red
wget  https://raw.githubusercontent.com/SadhukhanR/papae/main/LICENSE
wget  https://raw.githubusercontent.com/SadhukhanR/papae/main/main.py 
wget  https://raw.githubusercontent.com/SadhukhanR/papae/main/papae
wget  https://raw.githubusercontent.com/SadhukhanR/papae/main/main.txt
wget  https://raw.githubusercontent.com/SadhukhanR/papae/main/devo.txt
chmod +x papae
sleep 5
echo -e $yellow
echo "========================================================"
cat LICENSE
echo "========================================================"
rm -rf LICENSE
cd /usr/local/bin
mkdir .papae
cd .papae
mkdir src
cd ~
mv -f papae /usr/local/bin 
mv -f main.py /usr/local/bin/.papae/src 
mv -f main.txt /usr/local/bin/.papae/src
mv -f devo.txt /usr/local/bin/.papae/src
echo -e $red
echo "Installing ..........."
echo -e $yellow
apt install python3-pip -y
sleep 5
apt install python3 -y
sleep 5
pip3 install pafy
sleep 5
pip3 install youtube_dl
sleep 5
echo -e $red
echo "========================================================="
echo "Starting papae yt downloader.."
echo -e $white
papae






