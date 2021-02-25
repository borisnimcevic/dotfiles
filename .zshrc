# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="fletcherm"
ZSH_THEME="dracula"
export UPDATE_ZSH_DAYS=7
plugins=(git)
plugins=(zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Dracula paramers:
DRACULA_DISPLAY_TIME=1
DRACULA_DISPLAY_CONTEXT=0
# ---Boris---
export EDITOR='vim' # vim is default editor
export TERM=xterm-256color # Makes vim stay with its colors

# ***Personal aliases:
# generic:
alias cls="clear -x"
alias l="ls -lAh --color=auto"
alias ll="ls --color=auto"
alias open="xdg-open"
alias zzz="systemctl suspend"

# workflow:
alias py="python3"
alias v="nvim"

# embedded:
IMAGICHARM="~/esp/imagiLabs-firmware/esp-idf-v4.0/imagiCharm"
alias get_idf='. $HOME/esp/esp-idf/export.sh' # needed to work with ESP
alias idfb='idf.py build'
alias idfe='idf.py erase_flash -p /dev/ttyUSB1'
alias idff='idf.py -p /dev/ttyUSB1 flash'
alias idffm='idf.py -p /dev/ttyUSB1 flash monitor'
alias idfm='idf.py -p /dev/ttyUSB1 monitor'
alias imagi='~/automation/imagi.sh' # start imagi dev environment
# start imagi dev environment
alias imvim='nvim -O ~/esp/imagiLabs-firmware/esp-idf-v4.0/imagiCharm/main/main.c ~/esp/imagiLabs-firmware/esp-idf-v4.0/imagiCharm/main/main.c'
alias b='./build.sh' # start imagi dev environment

# git:
alias gs='git status' # start imagi dev environment
alias ga='git add' # start imagi dev environment
alias gacm='git commit -am' # start imagi dev environment
alias gcm='git commit -m' # start imagi dev environment

# school:
alias tub='cd ~/school/tub/networked_embedded_systems/.' # start imagi dev environment

# typos:
alias ncim=nvim #because I'm lame

# make a path for IDF_PATH
export IDF_PATH=~/esp/esp-idf

# cpputest
export CPPUTEST_HOME=/home/borisnotes/tools/cpputest/cpputest-3.8

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Start tmux on the terminal startup?
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
