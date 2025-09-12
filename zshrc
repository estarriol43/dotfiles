# env variable
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="/usr/bin/vim"
export PATH="$HOME/.local/bin:$PATH"

# theme
ZSH_THEME="blinks"

# Plugins
plugins=(zsh-autosuggestions zsh-syntax-highlighting docker docker-compose)

# Path to oh-my-zsh 
source $ZSH/oh-my-zsh.sh

# Enable docker auto complete
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

# Keyboard delay 1/100 sec
KEYTIMEOUT=4

# alias
alias la="ls -alh"
alias ll="ls -lh"
alias hh="history"
alias hidedirty='git config --add oh-my-zsh.hide-dirty 1'
alias bat='batcat'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
