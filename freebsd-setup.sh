#!/usr/local/bin/sh

packages="
    bash
    zsh
    vim
    neovim
    git 
    fd-find
    ripgrep
    cscope
    htop
    python3
    python3-pip
"

sudo pkg update
sudo pkg install -y $packages

# git
git config --global user.name "Jian-Lin Li"
git config --global user.email "b07902103@ntu.edu.tw"
