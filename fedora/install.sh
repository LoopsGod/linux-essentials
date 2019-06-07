#!/bin/bash

echo "Copyright (C) josh1dev, https://github.com/josh1dev"
echo "Now going to start installing..."
echo "Make sure you're root."

echo "Enabling RPM Fusion Repositories" 
dnf install "https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm" "https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

echo "Enabling better fonts"
dnf copr enable dawid/better_fonts
dnf install fontconfig-enhanced-defaults fontconfig-font-replacements

echo "Installing nano"
dnf install nano 

# Attempt installations 
echo "Installing GNOME Tweaks first..."
dnf install gnome-tweaks -y

echo "Enabling flat-remix repository"
dnf copr enable daniruiz/flat-remix 

echo "Downloading flat remix themes..."
dnf install flat-remix -y
dnf install flat-remix-gnome -y
dnf install flat-remix-gtk -y

echo "Now installing some useful tools..."

echo "Installing qBittorrent" 
dnf install qbittorrent -y

echo "Installing VLC"
dnf install "https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm"
dnf install "https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"
dnf install vlc -y

echo "Installing VirtualBox (6.0.8) - Check new releases here: https://www.virtualbox.org/wiki/Linux_Downloads" 
wget "https://download.virtualbox.org/virtualbox/6.0.8/VirtualBox-6.0-6.0.8_130520_fedora29-1.x86_64.rpm"
rpm -i VirtualBox-*.rpm

echo "Installing BleachBit"
dnf install bleachbit -y

# Bye bye 
echo "Installation has completed successfully, thanks for using us."
echo "Copyright (C) josh1dev, https://github.com/josh1dev"

# Exit 
exit 
