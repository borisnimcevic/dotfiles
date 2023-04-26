# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/functions.zsh

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
# export TERM=xterm-256color # Makes vim stay with its colors

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Start tmux on the terminal startup
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#     tmux attach -t default || tmux new -s default
# fi

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
