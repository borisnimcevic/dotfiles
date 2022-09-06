#!/bin/bash

# install prerequisites
# sudo apt update

if [ $USER != "root" ]; then
	echo "You need to run this script as a root user."
	echo "Try: sudo ./nvim-setup.sh"
	exit
fi
	

function install-prog {
  # We don't care about the output of this command so we do both, stdout and
  # stderr, to the void (/dev/null). Why would we run a command, but then 
  # disregard all the results? Well look at the if statement.
  which $1 &> /dev/null

  # "echo $?" returns the result of the previous command. So if the program was
  # installed "which" command would return 0. If the program doesn't exist the
  # return is something else then 0 and we have to install it.
  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# install-prog clangd
# install-prog curl
# install-prog figlet
# install-prog git
# install-prog lolcat
# install-prog nodejs
# install-prog npm
# install-prog python3.9
# install-prog python3-pip

# pip3 install neovim

# check if $HOME/.local/bin/ exist
BIN_DIR="/home/$SUDO_USER/.local/bin"
if [ -d "$BIN_DIR" ]; then
	echo "$BIN_DIR exist. Great!" 
else
	echo "$BIN_DIR does not exits. Let's make it." 
	mkdir -pv "$BIN_DIR"
	echo "$BIN_DIR is now created." 
fi

# add .local/bin/ tothe path if it doesn't exist
echo $PATH | grep "/.local/bin" &> /dev/null
if [ $? -ne 0 ]; then
  echo "Added $BIN_DIR to the PATH."
  export PATH="/home/$SUDO_USER/.local/bin:$PATH"
else
  echo "$BIN_DIR already in the PATH."
fi

# install language servers
# sudo npm i -g bash-language-server
# pip3 install cmake-language-server

# download latest stable neovim
# curl -LOf https://github.com/neovim/neovim/releases/download/stable/nvim.appimage

# make it executable with 'nvim'
chmod u+x nvim.appimage
sudo mv nvim.appimage $HOME/.local/bin/nvim
echo "moved nvim to .local/bin"

# add it as a main editor
echo "export EDITOR=\"nvim\"" >> $HOME/.bash_profile
echo "export EDITOR=\"nvim\"" >> $HOME/.zshrc

# make aliases
echo "alias v=\"nvim\"" >> $HOME/.bashrc
echo "alias v=\"nvim\"" >> $HOME/.zshrc

# symlink nvim configuration
destination="${HOME}/.config"
dateString=$(date +%Y-%m-%d-%H%M)

if [ -d "${destination}" ]; then
  # The configuration already exist, we should change the name and back it up
  echo "Backing up existing dir: ${destination}"
  mv ${destination}{,.${dateString}}
fi

echo "Creating new symlink: ${HOME}/.config"
ln -s $(pwd) ${destination}

# get packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install packer plugins
nvim --headless +"PackerInstall" +qa

echo "nvim setup done!!!"
