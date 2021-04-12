# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="fletcherm"
# ZSH_THEME="dracula"
ZSH_THEME="boris"
export UPDATE_ZSH_DAYS=7
plugins=(git)
plugins=(zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Dracula paramers:
DRACULA_DISPLAY_TIME=1
DRACULA_DISPLAY_CONTEXT=0
# ---Boris---
export EDITOR='nvim' # vim is default editor
# export TERM=xterm-256color # Makes vim stay with its colors

# ***Personal aliases:
##########
# Generic:
##########
alias cls="clear -x"
alias cp="cp -rv"
alias ll="ls --color=auto"
alias l="ls -lAh --color=auto"
alias mkdir="mkdir -pv"
alias mv="mv -v"
alias open="xdg-open"
alias rm="rm -rv"
alias zzz="systemctl suspend"

mcd (){
    mkdir -p $1
    cd $1
}

# workflow:
alias py="python3"
alias v="nvim"
alias ncim=nvim #because I'm lame

# embedded:
IMAGICHARM="~/esp/imagiLabs-firmware/esp-idf-v4.0/imagiCharm"
alias b='./build.sh'
alias game='cd ~/esp/imagiLabs-firmware/game-hardware/.'
alias get_idf='. $HOME/esp/esp-idf/export.sh' # needed to work with ESP
alias idfb='idf.py build'
alias idfe='idf.py erase_flash -p /dev/ttyUSB1'
alias idff='idf.py -p /dev/ttyUSB1 flash'
alias idffm='idf.py -p /dev/ttyUSB1 flash monitor'
alias idfm='idf.py -p /dev/ttyUSB1 monitor'
alias imagi='~/automation/imagi.sh'
alias test='./test.sh'
# start imagi dev environment

# git:
alias gs='git status'
alias ga='git add'
alias gacm='git commit -am'
alias gcm='git commit -m'

# school:
alias tub='cd ~/school/tub/wireless_communication_systems/.' # start imagi dev environment

# make a path for IDF_PATH
export IDF_PATH=~/esp/esp-idf

# cpputest
export CPPUTEST_HOME=/home/borisnotes/tools/cpputest/cpputest-3.8

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Start tmux on the terminal startup?
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
