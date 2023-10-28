#!/bin/bash

# Clean pacman cache
sudo pacman -Sc

# Clean /var/tmp/
sudo rm -rf /var/tmp/*

# Clean /tmp/
sudo rm -rf /tmp/*

# Remove unused packages
sudo pacman -Rns $(pacman -Qtdq)

# Remove old kernels
sudo pacman -R $(pacman -Qdtq)

# Clean journal logs
sudo journalctl --vacuum-size=50M

