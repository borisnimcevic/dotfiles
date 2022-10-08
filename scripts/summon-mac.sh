#!/bin/bash

# Brew setup
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/borisnimcevic/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/borisnimcevic/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Tmux setup
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm    
brew install tmux
# The first time you run tmux install the plugins by running "prefix + I" (that a capital i)
