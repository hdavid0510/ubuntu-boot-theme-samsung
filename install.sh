#!/bin/bash

# GRUB theme install
sudo cp -r grub-theme/samsung /boot/grub/themes/
sudo sed -i '/GRUB_THEME=/d' /etc/default/grub
echo -e "\nGRUB_THEME=samsung" | sudo tee -a /etc/default/grub
update-grub

# Plymouth theme install
sudo cp -r plymouth-theme/samsung /usr/share/plymouth/themes/
sudo update-alternative --install default.plymouth /usr/share/plymouth/themes/samsung/samsung.plymouth 200
sudo update-alternative --auto default.plymouth
