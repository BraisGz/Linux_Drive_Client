#! /bin/bash
echo Initializing Uninstall &&
sudo rm -rf /usr/share/LinuxDrive &&
sudo rm -rf /home/Sync &&
sudo rm /usr/share/applications/"LinuxDrive.desktop" &&
sudo rm /usr/share/applications/"LinuxDriveFolder.desktop" &&
echo Done!
notify-send "Linux Drive was succesfully removed of your system" "I hope you enjoyed it"