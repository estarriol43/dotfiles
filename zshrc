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

# Color
if [[ $TMUX != "" ]] then
    export TERM="tmux-256color"
else
    export TERM="xterm-256color"
fi

# Language
export LANG=en_US.UTF-8

# Keyboard delay 1/100 sec
KEYTIMEOUT=4

# time zone
export TZ="/usr/share/zoneinfo/Asia/Taipei"

# alias
alias la="ls -alh"
alias ll="ls -lh"
alias hh="history"
alias hidedirty='git config --add oh-my-zsh.hide-dirty 1'
