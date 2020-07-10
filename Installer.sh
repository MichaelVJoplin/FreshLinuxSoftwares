#!/bin/bash
apt-get update -y
apt-get upgrade -qq

#Run this script as root tho it can be run with Sudo Priv.
#USE: bash Installer.sh inorder to run the Script. 

systemctl enable postgresql # MSFConsole faster load...
cd ~/Desktop/ # Install on Current User's Desktop directory.

software="python-setuptools python3-pip python-pip terminator bulk-extractor binwalk volatility foremost etherape masscan nload  steghide torbrowser-launcher zip unzip gedit geany"

for i in $software
do
echo "==============================="
echo ""
echo "##### INSTALLING $i #####"
echo ""
echo "==============================="
apt-get install $i -qq
done


echo "==============================="
echo ""
echo "##### IMPORTING CapTipper #####"
echo ""
echo "==============================="

git clone https://github.com/omriher/CapTipper.git
echo "==============================="
echo ""
echo "##### IMPORTING LineEnum #####"
echo ""
echo "==============================="

git clone https://github.com/rebootuser/LinEnum.git

echo "==============================="
echo ""
echo "##### IMPORTING Vulnscan #####"
echo ""
echo "==============================="

git clone https://github.com/scipag/vulscan scipag_vulscan
ln -s `pwd`/scipag_vulscan /usr/share/nmap/scripts/vulscan

echo "==============================="
echo ""
echo "##### IMPORTING Python related Packages/Libraries #####"
echo ""
echo "==============================="

pip install requests -U

echo "==============================="
echo ""
echo "##### IMPORTING Nipe #####"
echo ""
echo "==============================="

git clone https://github.com/GouveaHeitor/nipe && cd nipe
cpan install Try::Tiny Config::Simple JSON
perl nipe.pl install&&cd ..
