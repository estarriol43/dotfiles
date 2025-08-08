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
