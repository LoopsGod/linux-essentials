#!/bin/bash

echo "Now going to start installing..."
echo "Make sure you're root."

echo "Installing nano"
sudo dnf install nano 

# Attempt installation 
echo "Enabling flat-remix repository"
sudo dnf copr enable daniruiz/flat-remix 

echo "Download flat remix icon theme"
sudo dnf install flat-remix 



