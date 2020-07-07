# Path to your oh-my-zsh installation.
export ZSH="/home/borisnotes/.oh-my-zsh"
ZSH_THEME="robbyrussell"
export UPDATE_ZSH_DAYS=7
plugins=(git)
plugins=(zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# ---Boris---
export EDITOR='vim' # vim is default editor
# Makes vim stay with its colors
export TERM=xterm-256color

# ***Personal aliases:
# generic:
alias l="ls --color=auto"
alias ll="ls -lAh --color=auto"
alias cls="clear -x"
alias zzz="systemctl suspend"

# embedded:
alias get_idf='. $HOME/esp/esp-idf/export.sh' # needed to work with ESP

# make a path for IDF_PATH
export IDF_PATH=~/esp/esp-idf
