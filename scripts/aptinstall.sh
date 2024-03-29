#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

install bison 
install build-essential
install ccache 
install cmake 
install curl
install dfu-util
install figlet
install flex
install git
install gperf 
install i3
install libffi-dev 
install libssl-dev 
install lolcat 
install manpages-dev
# install neovim
install ninja-build 
install python 
install python3-pip 
install python3-setuptools 
install tldr
install tmux
install tree
install wget
install zsh
