# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="fletcherm"
# ZSH_THEME="dracula"
# ZSH_THEME="boris"
# ZSH_THEME="amuse"
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="agnoster"
export UPDATE_ZSH_DAYS=7
plugins=(
	colored-man-pages 
	colorize 
	command-not-found 
	git 
	zsh-autosuggestions 
	thefuck 
)
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# ZSH_COLORIZE_STYLE="colorful"

# Dracula paramers:
# DRACULA_DISPLAY_TIME=1
# DRACULA_DISPLAY_CONTEXT=0
# ---Boris---
export EDITOR='nvim' # neovim is default editor
# export TERM=xterm-256color # Makes vim stay with its colors

# ***Personal aliases:
##########
# Generic:
##########
alias cls="clear -x"
alias cp="cp -rv"
alias l="ls -lAh --color=auto"
alias ll="ls --color=auto"
alias mkdir="mkdir -pv"
alias mv="mv -v"
alias o="xdg-open"
alias open="xdg-open"
alias rm="rm -rv"
alias zzz="systemctl suspend"

mcd (){
    mkdir -p $1
    cd $1
}

# 'ls' after changing directory
chpwd() ls -lah

# workflow:
alias bigdir="du -h . | sort -hr | head -n 20"
alias fd="fdfind"
alias info="ls -lah"
alias ncim=nvim #because I'm lame
alias py="python3"
alias v="nvim"
alias vrc="nvim ~/.config/nvim/init.lua"
alias zrc="nvim ~/.zshrc"

# vim habits
alias :q="exit"
alias :w="figlet \"lol, wtf?\" | lolcat"

# rust:
alias cb="cargo build"
alias cn="~/automation/rust-by-example_new-lesson.sh"
alias cr="cargo run"

# embedded:
IMAGICHARM="~/esp/imagiLabs-firmware/imagiCharm"
alias flash_imagi="~/projects/imagiLabs/loop-flash.sh" 
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

# work - temporarly while I work on these projects
alias wat='~/projects/Watchular/.'

# esp idf:
alias makeNewComponentESP='~/automation/makeNewComponentESP.sh'

# cpp:
alias makeCppProject='~/automation/makeCppProject.sh'
alias makeNewComponentCpp='~/automation/makeNewComponentCpp.sh'

# git:
alias ga='git add'
alias gacm='git commit -am'
alias gcm='git commit -m'
alias gs='git status'

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
