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

# tmux plugin
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# zsh plugin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ""  --unattended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

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
