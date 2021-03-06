#!/bin/bash

# get curl
sudo apt update
sudo apt install -y curl
sudo apt install -y git

# get neovim
curl -LOf https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage

# make it executable with 'nvim'
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

# add it as a maing editor
echo "export EDITOR=\"nvim\"" >> $HOME/.bash_profile

# symlink nvim configuration
ln -s $HOME/dotfiles/.config/nvim $HOME/.config

# get vim plugged
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
