#! /bin/bash
/usr/share/LinuxDrive/scripts/yad_tray.sh &
/usr/share/LinuxDrive/scripts/syncing.sh &
cd /home/Sync
while true; do
sleep 5
grive
done