#!/bin/bash

packages="
    vim
    git 
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
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
tar xavf nvim-linux64.tar.gz
cd ./nvim-linux64
sudo cp  -r ./* /usr/local/

# git
git config --global user.name "Jian-Lin Li"
git config --global user.email "b07902103@ntu.edu.tw"
