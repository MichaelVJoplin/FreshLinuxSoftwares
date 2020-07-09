#!/bin/bash



x="python-setuptools python3-pip python-pip terminator bulk-extractor binwalk volatility foremost etherape masscan nload  steghide torbrowser-launcher zip unzip gedit geany"

for i in $x
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
echo "##### INSTALLING CapTipper #####"
echo ""
echo "==============================="

git clone https://github.com/omriher/CapTipper.git
echo "==============================="
echo ""
echo "##### INSTALLING LineEnum #####"
echo ""
echo "==============================="

git clone https://github.com/rebootuser/LinEnum.git

echo "==============================="
echo ""
echo "##### INSTALLING Vulnscan #####"
echo ""
echo "==============================="

git clone https://github.com/scipag/vulscan scipag_vulscan
ln -s `pwd`/scipag_vulscan /usr/share/nmap/scripts/vulscan

echo "==============================="
echo ""
echo "##### INSTALLING Nipe #####"
echo ""
echo "==============================="

git clone https://github.com/GouveaHeitor/nipe && cd nipe
cpan install Try::Tiny Config::Simple JSON
perl nipe.pl install&&cd ..
