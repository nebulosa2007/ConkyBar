#Installing (TODO)

pikaur -S conky hddtemp smartmontools vnstat
sudo systemctl enable --now vnstat.service

cp .conky/ConkyBar/fonts/GE\ Inspira/ge-inspira.ttf .local/share/fonts/ge-inspira.ttf && fc-cache

# echo \"Samsung SSD 870 EVO 250G B\" 190 C \"Samsung SSD 870 EVO 250GB\" | sudo tee -a /etc/hddtemp.db
# echo "$USER ALL = (ALL) NOPASSWD: /usr/bin/smartctl -a /dev/sda" | sudo tee /etc/sudoers.d/conky
# echo "$USER ALL = (ALL) NOPASSWD: /usr/bin/hddtemp /dev/sda" | sudo tee -a /etc/sudoers.d/conky

printf "[Desktop Entry]\nType=Application\nName=conky\nExec=/home/$USER/.conky/ConkyBar/conky_start\nStartupNotify=false\nTerminal=false" > ~/.config/autostart/conky.desktop
