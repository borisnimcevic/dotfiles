# ----------------
# Instant Prompt
# ----------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ----------------
# Custom Functions, Aliases, and Variables
# ----------------
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/functions.zsh
source $HOME/.zsh/variables.zsh

# ----------------
# Language
# ----------------
export LANG=en_US.UTF-8

# ----------------
# Oh-My-Zsh
# ----------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
export UPDATE_ZSH_DAYS=7
plugins=(
	colored-man-pages 
	colorize 
	command-not-found 
	git 
	thefuck 
	zsh-autosuggestions 
    poetry
    tmux
)
source $ZSH/oh-my-zsh.sh

# ----------------
# Syntax Highlighting
# ----------------
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ----------------
# FZF (Fuzzy Finder)
# ----------------
source $(brew --prefix)/opt/fzf/shell/key-bindings.zsh

# ----------------
# Node Version Manager (NVM)
# ----------------
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ----------------
# Powerlevel10k
# ----------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ----------------
# Broot (File Manager)
# ----------------
source /Users/borisnimcevic/.config/broot/launcher/bash/br
export PATH="/Users/borisnimcevic/.local/bin:$PATH"

# ----------------
# Google Cloud SDK
# ----------------
if [ -f '/Users/borisnimcevic/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/borisnimcevic/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/borisnimcevic/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/borisnimcevic/google-cloud-sdk/completion.zsh.inc'; fi

# ----------------
# SonarQube
# ----------------
export PATH="/Users/borisnimcevic/sonar/bin:$PATH"

# ----------------
# Clang
# ----------------
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/Users/borisnimcevic/my_corner/llvm-project/clang-tools-extra/clang-tidy/tool:$PATH"


export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/borisnimcevic/junk/pipelines/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/borisnimcevic/junk/pipelines/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/borisnimcevic/junk/pipelines/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/borisnimcevic/junk/pipelines/google-cloud-sdk/completion.zsh.inc'; fi
