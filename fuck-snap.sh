#!/bin/bash

######## remove snaps packages ########
echo "remove snaps packages...."
sudo snap remove firefox
sudo snap remove gtk-common-themes
sudo snap remove gnome-42-2204
sudo snap remove snapd-desktop-integration
sudo snap remove snap-store
sudo snap remove firmware-updater
sudo snap remove bare
sudo snap remove core22
sudo snap remove snapd


######## remove snap deamon ########
echo "remove snap deamon..."
sudo systemctl stop snapd > /dev/null 2>&1
sudo systemctl disable snapd > /dev/null 2>&1
sudo systemctl mask snapd > /dev/null 2>&1

sudo apt purge snapd -y
sudo apt-mark hold snapd


######## remove snap package derectories ########
echo "remove snap package derectories..."
sudo rm -rf ~/snap
sudo rm -rf /snap
sudo rm -rf /var/snap
sudo rm -rf /var/lib/snapd


######## prevent snap from reinstalling ########
echo "prevent snap from reinstalling..."
sudo sh -c "echo 'Package: snapd\nPin: release a=*\nPin-Priority: -100' > /etc/apt/preferences.d/nosnap.pref"


######## update ########
echo "updating..."
sudo apt update

echo "done"
