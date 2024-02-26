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
brew install lua-language-server

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

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup toolchain install nightly
rustup default nightly
brew install rust-analyzer
##  Yew
rustup target add wasm32-unknown-unknown
cargo install trunk

# export LIBCLANG_PATH="/Users/borisnimcevic/.espressif/tools/xtensa-esp32-elf-clang/esp-14.0.0-20220415-aarch64-apple-darwin/lib/"
# export PATH="/Users/borisnimcevic/.espressif/tools/xtensa-esp32-elf-gcc/8_4_0-esp-2021r2-patch3-aarch64-apple-darwin/bin/:/Users/borisnimcevic/.espressif/tools/xtensa-esp32s2-elf-gcc/8_4_0-esp-2021r2-patch3-aarch64-apple-darwin/bin/:/Users/borisnimcevic/.espressif/tools/xtensa-esp32s3-elf-gcc/8_4_0-esp-2021r2-patch3-aarch64-apple-darwin/bin/:$PATH"
 # If you want to activate the ESP-RS environment in every terminal session automatically, you can add the previous commands to "/Users/borisnimcevic/.zshrc"
 # However, it is not recommended, as doing so activates  ESP-RS virtual environment in every terminal session (including those where  ESP-RS is not needed), defeating the purpose of the virtual environment and likely affecting other software.
 # The recommended approach is to source the export file: ". export-esp.sh"
 # Note: This should be done in every terminal session.

cargo install ldproxy
cargo install espup
cargo install cargo-espflash
cargo install espflash
cargo install cargo-espmonitor
cargo install espmonitor
cargo install cargo-generate

## Installs

# Communicatoin
brew install signal
brew install telegram

# Other
brew install --cask anki
brew install --cask arduino
brew install --cask bluetility
brew install --cask coolterm
brew install --cask discord
brew install --cask docker
brew install --cask eagle
brew install --cask inkscape
brew install --cask keybase
brew install --cask kicad
brew install --cask monitorcontrol
brew install --cask ngrok
brew install --cask raspberry-pi-imager
brew install --cask sonic-pi
brew install --cask ultimaker-cura
brew install --cask whatsapp
brew install arduino-cli
brew install broot
brew install fd
brew install figlet
brew install gcovr
brew install jq
brew install llvm
brew install lolcat
brew install node
brew install ripgrep
brew install slack
brew install tldr
brew install tree
brew install wget
