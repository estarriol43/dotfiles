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
"

sudo apt update
sudo apt install -y $packages

cd /tmp
git clone https://github.com/neovim/neovim.git
cd ./neovim
make CMAKE_BUILD_TYPE=Release
sudo make install

# git
git config --global user.name "Jian-Lin Li"
git config --global user.email "b07902103@ntu.edu.tw"
