# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# update_prompt() {
#   NUM=$(cat /Users/borisnimcevic/quandify/labday/2023/chatgpt-metro/a.txt)
#   echo "%n - %{$fg[green]%}Leave in $NUM min.%{$reset_color%}%\> "
# }

# NUM=$(cat /Users/borisnimcevic/quandify/labday/2023/chatgpt-metro/a.txt)
# PS1='$(update_prompt)'

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
export MDK='/Users/borisnimcevic/my_corner/projects/mdk'    # Points to MDK directory
export ARCH='esp32c3'         # Valid choices: esp32 esp32c3
export PORT='/dev/tty.usbmodem1101'    # Serial port for flashing
# export PORT='/dev/tty.usbserial-110'    # Serial port for flashing

# ***Personal aliases:
##########
# Generic:
##########
# alias o="xdg-open" # uncomment for linux
# alias open="xdg-open" # uncomment for linux
alias cls="clear -x"
alias cp="cp -rv"
alias l="ls -lAh --color=auto"
alias ll="ls --color=auto"
alias mkdir="mkdir -pv"
alias mv="mv -v"
alias o="open"
alias priv='tmux new -s private'
alias rm="rm -rv"
alias zzz="systemctl suspend"

# workflow:
# alias fd="fdfind"
alias advent="cd ~/my_corner/projects/advent-of-code-2022"
alias bigdir="du -h . | sort -hr | head -n 20"
alias down="cd ~/Downloads/."
alias hetzner='ssh -i ~/.ssh/id_rsa-hetzner root@65.108.88.167'
alias info="ls -lah"
alias ncim=nvim #because I'm lame
alias play="cd ~/my_corner/projects/playground/."
alias pro="cd ~/my_corner/projects/."
alias py="python3"
alias python="python3"
alias update="source ~/.zshrc"
alias v="nvim"
alias vrc="nvim ~/.config/nvim/init.lua"
alias zrc="nvim ~/.zshrc"

# functions
# make a directory and switch into it
mcd (){
    mkdir -p $1
    cd $1
}

# 'ls' after changing directory
chpwd() ls -lah

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
# alias b='scripts/build.sh'
# alias br='b ; r'
# alias build='scripts/build.sh'
alias configure='scripts/configure.sh'
alias game='cd ~/esp/imagiLabs-firmware/game-hardware/.'
alias imagi='cd ~/esp/imagiLabs-firmware/imagiCharm/.'
alias monitor='scripts/monitor.sh'
# alias r='scripts/run.sh'
# alias run='scripts/run.sh'
# alias test='scripts/test.sh'

##########
# ESP
##########
export IDF_PATH="$HOME/esp/idf_5.0/esp-idf" # set it as a default
alias get_idf4='export IDF_PATH=$HOME/esp/idf_4.4/esp-idf && . $HOME/esp/idf_4.4/esp-idf/export.sh'
alias get_idf5='export IDF_PATH=$HOME/esp/idf_5.0/esp-idf && . $HOME/esp/idf_5.0/esp-idf/export.sh'

alias idfb='idf.py build'
alias idff='idf.py flash'

# work - temporarly while I work on these projects
alias wat='~/projects/Watchular/.'

# arduino-cli:
alias acli='arduino-cli'

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

##########
# Quandify 
##########
alias build_msp="/Applications/ti/ccs1210/ccs/utils/bin/gmake -j 7 all -O "
alias clean_msp="/Applications/ti/ccs1210/ccs/utils/bin/gmake -j 7 clean -O"
alias cm="cd ~/code/firmware/products/cubic-meter"
alias cs="cd ~/code/firmware/products/cubic-secure"
alias tool="cd ~/code/cubic-tool"
alias lecture="cd /Users/borisnimcevic/quandify/knowledge/unit_testing/course && docker run -it --rm -v $PWD:/lab throwtheswitch/drsurly-course1"
alias main="./build/main"
alias prp="poetry run pytest" # add "-k" followed by the name of the test to filter that test out, add "-s" if you have a python print statements that you want to print
alias qmux='tmux new -s quandify'
alias qt="cd ~/code/firmware-tools/modules/cm-auto-tester" 
alias syml='fd -H -e yml -E esp-google-iot | xargs rg'
# alias junk='tmux new-window -n quick-test \; cd ~/Desktop \; split-window -h'
# alias junk='tmux new-window -n quick-test'
# alias junk='tmux new-window -n quick-test "cd /Users/borisnimcevic/Desktop/"'
# alias junk='tmux new-window -n quick-test && cd /Users/borisnimcevic/Desktop/'

# other paths 
# export PATH=/Users/borisnimcevic/my_corner/llvm-project/build/bin:$PATH

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

source /Users/borisnimcevic/.config/broot/launcher/bash/br
export PATH="/Users/borisnimcevic/.local/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/borisnimcevic/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/borisnimcevic/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/borisnimcevic/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/borisnimcevic/google-cloud-sdk/completion.zsh.inc'; fi
