# Helper functions

disable_chpwd_run_and_restore() {
    # Save the current chpwd function if it exists
    if declare -F chpwd > /dev/null; then
        original_chpwd=$(declare -f chpwd)
        unset -f chpwd  # Temporarily disable the chpwd function
    fi

    # Execute the command block passed to this function
    "$@"

    # Restore the original chpwd function, if it was set
    if [[ -n "$original_chpwd" ]]; then
        eval "$original_chpwd"
    fi
}

# get_idf3() {
#     disable_chpwd_run_and_restore {
#         export IDF_PATH=$HOME/esp/idf_5.3/esp-idf
#         . "$HOME/esp/idf_5.3/esp-idf/export.sh"
#         source "$HOME/esp/idf_5.3/esp-matter/export.sh"
#     }
# }

# General:
alias :q="exit" # vim habit
alias :w="figlet \"lol, wtf?\" | lolcat" # vim habit
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
alias cdate="date +%Y-%m-%d | pbcopy"
# Navigation:
alias aliases="cd $HOME/dotfiles/.zsh && nvim aliases.zsh && cd -"
alias desk="cd $HOME/Desktop/."
alias down="cd $HOME/Downloads/."
alias play="cd $HOME/my_corner/projects/playground/."
alias pro="cd $HOME/my_corner/projects/."
alias junk="cd $HOME/junk/."

# TMUX:
alias priv='tmux new -s priv'
alias tkill="tmux list-panes -F '#P' | grep -v $(tmux display-message -p '#P') | xargs -I {} tmux kill-pane -t {}"
alias tma='tmux attach-session -t'

# Webserver:
alias hetzner='ssh -i ~/.ssh/id_rsa-hetzner root@65.108.88.167'

# Python:
alias pre="poetry run esp_flasher"
alias prp="poetry run pytest" # add "-k" followed by the name of the test to filter that test out, add "-s" if you have a python print statements that you want to print
alias py="python3"
alias python="python3"

# MSP430:
alias msp_build="/Applications/ti/ccs1210/ccs/utils/bin/gmake -j 7 all -O "
alias msp_clean="/Applications/ti/ccs1210/ccs/utils/bin/gmake -j 7 clean -O"

# Espressif:
alias get_idf4='export IDF_PATH=$HOME/esp/idf_4.4/esp-idf && . $HOME/esp/idf_4.4/esp-idf/export.sh' # CS,CDet
alias get_idf3='export IDF_PATH=$HOME/esp/idf_5.3/esp-idf && . $HOME/esp/idf_5.3/esp-idf/export.sh'
# alias get_idf3='export IDF_PATH=$HOME/esp/idf_5.3/esp-idf && . $HOME/esp/idf_5.3/esp-idf/export.sh && source $HOME/esp/idf_5.3/esp-matter/export.sh' # CDot
# alias get_idf3='disable_chpwd_run_and_restore bash -c "{ export IDF_PATH=$HOME/esp/idf_5.3/esp-idf && . $HOME/esp/idf_5.3/esp-idf/export.sh && source $HOME/esp/idf_5.3/esp-matter/export.sh; }"'
# alias get_idf3='disable_chpwd_run_and_restore sh -c "{ export IDF_PATH=$HOME/esp/idf_5.3/esp-idf && . $HOME/esp/idf_5.3/esp-idf/export.sh && source $HOME/esp/idf_5.3/esp-matter/export.sh; }"'
alias idfb='idf.py build'
alias idff='idf.py flash'
alias idfm='idf.py monitor'
alias idffm='idf.py flash monitor'

# Quandify:
alias build="./build.sh"
alias clean="./clean.sh"
alias lecture="cd /Users/borisnimcevic/quandify/knowledge/unit_testing/course && docker run -it --rm -v $PWD:/lab throwtheswitch/drsurly-course1"
alias qcd="cd $HOME/code/cubic-dot-fw/."
alias qcda="cd $HOME/code/cubic-dot-fw/esp32-app/."
alias qcdet="cd $HOME/code/firmware/products/cubic-detector/."
alias qcdetesp="cd $HOME/code/firmware/products/cubic-detector/esp32/."
alias qcdf="cd $HOME/code/cubic-dot-fw/esp32-factory/."
alias qcdm="cd $HOME/code/firmware/products/cubic-dot/msp-cubic-dot"
alias qcdt="cd $HOME/code/cubic-dot-fw/tools/."
alias qcm="cd $HOME/code/firmware/products/cubic-meter"
alias qcs="cd $HOME/code/firmware/products/cubic-secure"
alias qcse="cd $HOME/code/firmware/products/cubic-secure/esp32/."
alias qcst="cd $HOME/code/firmware/products/cubic-secure/esp32/test"
alias qct="cd $HOME/code/cubic-tool/cubic-tool-fw/."
alias qcte="cd $HOME/code/cubic-tool/cubic-tool-fw/esp32/."
alias qcts="cd $HOME/code/cubic-tool/cubic-tool-fw/stm32/Core/Src/."
alias qe="cd $HOME/code/environments/images"
alias qfir="cd $HOME/code/firmware/."
alias qft="cd $HOME/code/firmware-tools"
alias qhil="$HOME/code/firmware/products/cubic-detector/hil/esp-controller/esp32s3_hil_controller/"
alias qhp="cd $HOME/code/hardware-python"
alias qmux='tmux new -s quan'
alias qssh="ssh hil@192.168.1.91"
alias run="./run.sh"
alias tqcse="bash $HOME/dotfiles/scripts/cubicsecure-tmux.sh"

# Tests:
alias tb='cmake --build . --target all'
alias tr='./cubic-secure-esp32-test'

# Dotfiles
alias dot="cd $HOME/dotfiles"
alias update="source ~/.zshrc"
alias vrc="nvim ~/.config/nvim/init.lua"
alias zrc="nvim ~/.zshrc"

# Development
alias quickc="bash $HOME/dotfiles/automation/ctest.sh"
alias quickpy="bash $HOME/dotfiles/automation/pytest.sh"

# TODO: Linux specific, figure out how to detect OS as adjust the settings accordingly 
# alias o="xdg-open" # uncomment for linux
# alias open="xdg-open" # uncomment for linux
# alias zzz="systemctl suspend"
