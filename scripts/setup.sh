#!/bin/bash

./symlink.sh
./aptinstall.sh
./nvim-setup.sh
./programs.sh
# ./desktop.sh

# Get all upgrades
sudo apt upgrade -y

# See our bash changes
# source ~/.bashrc

# Fun hello
figlet "... and we're back!" | lolcat
