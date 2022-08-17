# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="fletcherm"
# ZSH_THEME="dracula"
ZSH_THEME="boris"
export UPDATE_ZSH_DAYS=7
plugins=(chucknorris colored-man-pages colorize command-not-found git zsh-autosuggestions thefuck )
source $ZSH/oh-my-zsh.sh
# ZSH_COLORIZE_STYLE="colorful"

# Dracula paramers:
DRACULA_DISPLAY_TIME=1
DRACULA_DISPLAY_CONTEXT=0
# ---Boris---
export EDITOR='nvim' # neovim is default editor
# export TERM=xterm-256color # Makes vim stay with its colors

# ***Personal aliases:
##########
# Generic:
##########
alias cat="ccat"
alias cls="clear -x"
alias cp="cp -rv"
alias less="cless"
alias ll="ls --color=auto"
alias l="ls -lAh --color=auto"
alias mkdir="mkdir -pv"
alias mv="mv -v"
alias open="xdg-open"
alias o="open"
alias rm="rm -rv"
alias zzz="systemctl suspend"

mcd (){
    mkdir -p $1
    cd $1
}

# 'ls' after changing directory
chpwd() ls -la

# workflow:
alias fd="fdfind"
alias info="ls -lah"
alias ncim=nvim #because I'm lame
alias py="python3"
alias qt="nvim ~/projects/cpp-practice/quick-test/main.cpp"
alias v="nvim"
alias vrc="nvim ~/.config/nvim/init.lua"
alias zrc="nvim ~/.zshrc"

# vim habits
alias :w="figlet \"lol, wtf?\" | lolcat"
alias :q="exit"

# rust:
alias cb="cargo build"
alias cr="cargo run"
alias cn="~/automation/rust-by-example_new-lesson.sh"


# embedded:
alias acli='arduino-cli'
alias b='scripts/build.sh'
alias br='b ; r'
alias build='scripts/build.sh'
alias configure='scripts/configure.sh'
alias game='cd ~/esp/imagiLabs-firmware/game-hardware/.'
alias get_idf='. $HOME/esp/esp-idf/export.sh' # needed to work with ESP
alias idfb='idf.py build'
alias idfe='idf.py erase_flash -p /dev/ttyUSB1'
alias idff='idf.py flash'
alias idffm='idf.py flash monitor'
alias idfm='idf.py monitor'
alias imagi='cd ~/esp/imagiLabs-firmware/imagiCharm/.'
alias monitor='scripts/monitor.sh'
alias r='scripts/run.sh'
alias run='scripts/run.sh'
alias test='scripts/test.sh'
IMAGICHARM="~/esp/imagiLabs-firmware/imagiCharm"

# work - temporarly while I work on these projects
alias wat='~/projects/Watchular/.'

# esp idf:
alias makeNewComponentESP='~/automation/makeNewComponentESP.sh'

# cpp:
alias makeCppProject='~/automation/makeCppProject.sh'
alias makeNewComponentCpp='~/automation/makeNewComponentCpp.sh'

# git:
alias gs='git status'
alias ga='git add'
alias gacm='git commit -am'
alias gcm='git commit -m'

# make a path for IDF_PATH
export IDF_PATH=~/esp/esp-idf

# cpputest
export CPPUTEST_HOME=/home/borisnotes/tools/cpputest/cpputest-3.8

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Start tmux on the terminal startup
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#     tmux attach -t default || tmux new -s default
# fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
