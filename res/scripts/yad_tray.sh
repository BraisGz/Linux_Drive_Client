#! /bin/bash
notify-send "Linux Drive is running"
yad --notification --image=/usr/share/LinuxDrive/icons/tray.svg --menu="Drive Folder!nautilus /home/Sync|Stop Syncing!pkill yad" --listen
