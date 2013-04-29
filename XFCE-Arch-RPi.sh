echo "Run this script as root only."
echo "You can hit Ctrl+c in next 10 seconds if you don't want to continue."
sleep 10
pacman-key --init 
pacman -Syu
pacman -S --noconfirm xorg-xinit xorg-server xorg-server-utils xterm
pacman -S --noconfirm xfce4
pacman -S --noconfirm mesa xf86-video-fbdev xf86-video-vesa
pacman -S --noconfirm slim
systemctl enable slim.service
systemctl enable graphical.target

curl https://raw.github.com/adimania/arch-desktop-environments/master/xinitrc >> ~/.xinitrc
curl https://raw.github.com/adimania/arch-desktop-environments/master/bash_profile >> ~/.bash_profile

reboot
