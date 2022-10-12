#!/bin/bash

# Brew setup
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/borisnimcevic/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/borisnimcevic/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# iTerm
brew install --cask iterm2

# TODO: automate this step
# downlaod fonts and add them to the "Font Book" https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf

# Tmux setup
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm    
brew install tmux
# The first time you run tmux install the plugins by running "prefix + I" (that a capital i)

# Oh my zsh
# get the powerlevel theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# sintax highlights
brew install zsh-syntax-highlighting

# Plugins
brew install thefuck 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cd
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



# NEOVIM
brew install neovim
brew install fd
brew install fzf

# Espressif
brew install cmake ninja dfu-util

brew install ccache
# ==> ccache
# To install symlinks for compilers that will automatically use
# ccache, prepend this directory to your PATH:
#   /opt/homebrew/opt/ccache/libexec
#
# If this is an upgrade and you have previously added the symlinks to
# your PATH, you may need to modify it to the path specified above so
# it points to the current version.
#
# NOTE: ccache can prevent some software from compiling.
# ALSO NOTE: The brew command, by design, will never use ccache.

mkdir -p ~/esp
cd ~/esp
git clone --recursive https://github.com/espressif/esp-idf.git

cd ~/esp/esp-idf
./install.sh all

. ./export.sh

## Installs

# Communicatoin
brew install signal
brew install telegram



# Other
brew install tldr
brew install ripgrep
brew install slack
brew install --cask keybase
brew install --cask sonic-pi
brew install --cask anki
brew install --cask whatsapp
