#!/bin/sh

sudo pacman -S xorg-server xf86-video-intel xorg-xinit xorg-xset xorg-xsetroot \
	make gcc pkgconfig libxft libxinerama libxrandr

mkdir -p ~/software
cd ~/software
rm -rf dwm dmenu st slock conf

git clone https://suckless.org/dwm
git clone https://suckless.org/dmenu
git clone https://suckless.org/st
git clone https://suckless.org/slock

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
sudo ln -s /usr/bin/startx /usr/bin/x
