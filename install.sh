#! /bin/bash
echo Initializing Setup &&
sudo mkdir /usr/share/LinuxDrive &&
sudo mkdir /home/Sync &&
sudo cp -r res/icons /usr/share/LinuxDrive &&
sudo cp -r res/scripts /usr/share/LinuxDrive &&
sudo cp res/links/LinuxDrive.desktop /usr/share/applications &&
sudo cp res/links/LinuxDriveFolder.desktop /usr/share/applications &&
sudo cp res/links/LinuxDriveRemover.desktop /usr/share/applications &&
sudo apt-get install -y git cmake build-essential libgcrypt11-dev libyajl-dev libboost-all-dev libcurl4-openssl-dev libexpat1-dev libcppunit-dev binutils-dev yad nautilus &&
cd res/base &&
mkdir build 
cd build
cmake res/base 
make -j4
sudo make install &&
sudo chmod 777 /home/Sync
cd /home/Sync
notify-send "Enter authorization code" "Open link showed on terminal and paste the code below"
grive -a
echo Done!
notify-send "Finished Setup" "Remember to add Linux Drive to your startup applications"
exit