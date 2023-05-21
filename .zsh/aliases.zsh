# General:
alias :q="exit" #vim habit
alias :w="figlet \"lol, wtf?\" | lolcat" #vim habit
alias bigdir="du -h . | sort -hr | head -n 20"
alias cls="clear"
alias cp="cp -rv"
alias l="ls -lAh --color=auto"
alias ll="ls --color=auto"
alias mkdir="mkdir -pv"
alias mv="mv -v"
alias o="open"
alias rm="rm -rv"
alias v="nvim"

# Navigation:
alias aliases="cd $HOME/dotfiles/.zsh && v aliases.zsh"
alias int="cd $HOME/my_corner/projects/intention-board/intention-pad-firmware/."
alias play="cd $HOME/my_corner/projects/playground/."
alias pro="cd $HOME/my_corner/projects/."
alias qcm="cd $HOME/code/firmware/products/cubic-meter"
alias qcs="cd $HOME/code/firmware/products/cubic-secure"
alias qct="cd $HOME/code/cubic-tool"
alias qe="cd $HOME/code/environments"
alias qft="cd $HOME/code/fimrware-tools"
alias qhp="cd $HOME/code/hardware-python"

# TMUX:
alias priv='tmux new -s private'
alias qmux='tmux new -s quandify'
alias tma='tmux attach-session -t'

# Webserver:
alias hetzner='ssh -i ~/.ssh/id_rsa-hetzner root@65.108.88.167'

# Python:
alias prp="poetry run pytest" # add "-k" followed by the name of the test to filter that test out, add "-s" if you have a python print statements that you want to print
alias py="python3"
alias python="python3"

# MSP430:
alias msp_build="/Applications/ti/ccs1210/ccs/utils/bin/gmake -j 7 all -O "
alias msp_clean="/Applications/ti/ccs1210/ccs/utils/bin/gmake -j 7 clean -O"

# Espressif:
alias get_idf4='export IDF_PATH=$HOME/esp/idf_4.4/esp-idf && . $HOME/esp/idf_4.4/esp-idf/export.sh'
alias get_idf5='export IDF_PATH=$HOME/esp/idf_5.0/esp-idf && . $HOME/esp/idf_5.0/esp-idf/export.sh'
alias idfb='idf.py build'
alias idff='idf.py flash'
alias idfm='idf.py monitor'

# Tests:
alias tb='cmake --build . --target all'
alias tr='./cubic-secure-esp32-test'

# Dotfiles
alias update="source ~/.zshrc"
alias vrc="nvim ~/.config/nvim/init.lua"
alias zrc="nvim ~/.zshrc"


# Other:
alias lecture="cd /Users/borisnimcevic/quandify/knowledge/unit_testing/course && docker run -it --rm -v $PWD:/lab throwtheswitch/drsurly-course1"

# TODO: Linux specific, figure out how to detect OS as adjust the settings accordingly 
# alias o="xdg-open" # uncomment for linux
# alias open="xdg-open" # uncomment for linux
# alias zzz="systemctl suspend"
