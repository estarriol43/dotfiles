# env variable
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="/usr/bin/vim"
export DISPLAY=:0
export PATH="$HOME/.local/bin:$PATH"

# theme
ZSH_THEME="blinks"

# Plugins
plugins=(zsh-autosuggestions zsh-syntax-highlighting docker docker-compose)

# Path to oh-my-zsh 
source $ZSH/oh-my-zsh.sh

# Color
export TERM=xterm-256color

# Language
export LANG=en_US.UTF-8

# Keyboard delay 1/100 sec
KEYTIMEOUT=4

# time zone
export TZ="/usr/share/zoneinfo/Asia/Taipei"

# alias
alias la="ls -alh"
alias ll="ls -lh"
alias gs="git status"
alias gps="git push"
alias gpl="git pull"
alias gaa="git add ."
alias gca="git commit -a -m"
alias gl="git log"
alias hh="history"
alias gll="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all" 
alias ntuvpn='sudo openconnect -q --protocol=pulse --authgroup="NTU EMail Account" -u b07902103 sslvpn2.ntu.edu.tw'
alias csievpn='sudo openvpn ~/.config.ovpn'
alias dwpm='wpm --tag $(date +"%Y/%m/%d")'
alias rgrep='grep -rn ./ -e '
alias temp='watch -n 1 sensors'
alias kgdb='gdb-multiarch --nx -ex "source ./.gdb-sekvm.py" -ex "target remote localhost:1234" '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/estarriol/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/estarriol/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/estarriol/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/estarriol/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
