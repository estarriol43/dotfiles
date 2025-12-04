#!/bin/bash

packages="
    vim
    git 
    tmux
    fd-find
    ripgrep
    cscope
    htop
    python3
    python3-pip
    zsh
    unzip
    npm
    gettext
    bat
"

sudo apt update
sudo apt install -y $packages

# neovim
cd /tmp
git clone https://github.com/neovim/neovim.git
cd ./neovim
make CMAKE_BUILD_TYPE=Release -j$(nproc)
sudo make install

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
