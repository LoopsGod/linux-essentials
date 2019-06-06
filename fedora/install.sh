#!/bin/bash

echo "Now going to start installing..."
echo "Make sure you're root."
sudo su 

echo "Installing nano"
dnf install nano 

# Attempt installation 
echo "Enabling flat-remix repository"
dnf copr enable daniruiz/flat-remix 

echo "Downloading flat remix themes..."
dnf install flat-remix -y
dnf install flat-remix-gnome -y
dnf install flat-remix-gtk -y

# Bye bye 
echo "Installation has completed successfully."

# Exit 
exit 
