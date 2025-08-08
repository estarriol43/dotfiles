#!/bin/bash
# Currently only support ubuntu on x86_64

packages="
    git 
    build-essential
    libglib2.0-dev
    libfdt-dev
    libpixman-1-dev
    libncurses5-dev
    zlib1g-dev
    ninja-build
    gettext
    flex
    bc
    bison
    cmake
    vim
    tmux

    libelf-dev
    libdwarf-dev

    fd-find
    ripgrep
    cscope

    htop
    ncat
    python3
    python3-pip
    zsh
    nasm
    unzip
    npm

    dos2unix
    dwarves

    iasl
    libssl-dev

    libaprutil1-dev
    libapr1-dev

    nfs-common
    nfs-kernel-server
"

sudo apt update
sudo apt install -y $packages

pip3 install qemu.qmp matplotlib pandas

cd /tmp
git clone https://github.com/neovim/neovim.git
cd ./neovim
make CMAKE_BUILD_TYPE=Release -j$(nproc)
sudo make install

sudo chmod 777 /mydata

echo zsh >> ~/.bashrc
