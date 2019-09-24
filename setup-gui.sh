#!/bin/sh

sudo pacman -S xorg-server xf86-video-intel xorg-xinit xorg-xset xorg-xsetroot \
	make gcc pkgconfig libxft libxinerama libxrandr \
	xdg-user-dirs gtk-chtheme lxappearance gtk-engines

mkdir -p ~/software
cd ~/software
rm -rf dwm dmenu st slock conf

git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/st
git clone https://git.suckless.org/slock
git clone https://github.com/patrickbucher/conf

cp ~/software/conf/dwm/config.h ~/software/dwm/
cp ~/software/conf/st/config.h ~/software/st/
cp ~/software/conf/slock/config.h ~/software/slock/

cd ~/software/dwm
make && sudo make install

cd ~/software/dmenu
make && sudo make install

cd ~/software/slock
make && sudo make install

cd ~/software/st
make && sudo make install

cp ~/software/conf/.xinitrc ~/
sudo cp ~/software/conf/scripts/switchkb /usr/bin/
sudo ln -sf /usr/bin/startx /usr/bin/x
sudo ln -sf /usr/bin/pinentry-ncurses /usr/bin/pinentry

cp ~/software/conf/user-dirs.dirs ~/.config/
mkdir ~/downloads
xdg-user-dirs-update

rm -r ~/software/conf
