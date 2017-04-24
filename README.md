# Linux Drive Client
Free Linux Google Drive Client

Based on Grive and working with Bash Scripts and Yad. 

To install it, just download it, open a terminal and write:

./install.sh

into the folder you downloaded.
Your root password is required.
It will create some folders and install some dependencies, it will compile grive and in some point you have to watch your terminal to see an url to authorize Google Drive, just click on it, paste the authorization code and wait to the first sync.

You can add the main program "Linux Drive" to your "start with the system" programs and you will be always updated. You can put the Drive Folder on your Dock to have and easy and fast acces to it.

If you have a slow internet connection you may want to change the server update frequency. To do this type in your terminal:

sudo gedit /usr/share/LinuxDrive/scripts/yad_LinuxDrive.sh

you gonna get something like this: 

#! /bin/bash
/usr/share/LinuxDrive/scripts/yad_tray.sh &
/usr/share/LinuxDrive/scripts/syncing.sh &
cd /home/Sync
while true; do
sleep 5
grive
done

You have to change the "sleep" command, changing the number next to it you will change the update frequency in seconds (60 seconds could be fine)

Grive Code - https://github.com/Grive/grive



