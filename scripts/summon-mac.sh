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


## Installs

# Communicatoin
brew install signal
brew install telegram



# Other
brew install tldr
brew install ripgrep
