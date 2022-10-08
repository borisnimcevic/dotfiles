#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/borisnimcevic/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/borisnimcevic/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
