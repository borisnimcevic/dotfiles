#!/bin/bash

# install prerequisites
sudo apt update

function install-prog {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

install-prog clangd
install-prog curl
install-prog figlet
install-prog git
install-prog nodejs
install-prog npm
install-prog python3.9
install-prog python3-pip

pip3 install neovim

# add path
export PATH="$HOME/.local/bin/:$PATH"

# install language servers
npm i -g bash-language-server
pip3 install cmake-language-server

# get neovim
curl -LOf https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage

# make it executable with 'nvim'
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

# add it as a main editor
echo "export EDITOR=\"nvim\"" >> $HOME/.bash_profile

# make alias
echo "alias v=\"nvim\"" >> $HOME/.bashrc

# symlink nvim configuration
ln -s $HOME/dotfiles/.config/nvim $HOME/.config

# get vim plugged
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install all the Plugs
nvim --headless +PlugInstall +qa

# setup coc
nvim --headless +"CocInstall coc-clangd" +qa
nvim --headless +"CocInstall coc-cmake" +qa
nvim --headless +"CocInstall coc-pyright" +qa
nvim --headless +"CocInstall coc-sh" +qa
nvim --headless +"CocInstall coc-spell-checker" +qa

# setup vimspector
nvim --headless +"VimspectorInstall vscode-cpptools" +qa

# reference to @ThePrimeagen
figlet "coconut  oil  applied" -f small
