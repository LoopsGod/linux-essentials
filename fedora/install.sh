#!/bin/bash

echo "Copyright (C) josh1dev, https://github.com/josh1dev"
echo "Now going to start installing..."
echo "Make sure you're root."
sudo su 

echo "Enabling RPM Fusion Repositories" 
dnf install "https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

echo "Enabling better fonts"
dnf copr enable dawid/better_fonts
dnf install fontconfig-enhanced-defaults fontconfig-font-replacements

echo "Installing nano"
dnf install nano 

# Attempt installation 
echo "Enabling flat-remix repository"
dnf copr enable daniruiz/flat-remix 

echo "Downloading flat remix themes..."
dnf install flat-remix -y
dnf install flat-remix-gnome -y
dnf install flat-remix-gtk -y

echo "Now installing some useful tools..."

echo "Downloading qBittorrent" 
dnf install qbittorrent -y

echo "Downloading VLC"
dnf install "https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm"
dnf install "https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"
dnf install vlc -y

# Bye bye 
echo "Installation has completed successfully, thanks for using us."
echo "Copyright (C) josh1dev, https://github.com/josh1dev"

# Exit 
exit 
