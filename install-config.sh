#!/bin/bash

set +x

# zsh
ln -sfn "$HOME/dotfiles/zshrc" "$HOME/.zshrc"

# tmux
ln -sfn "$HOME/dotfiles/tmux.conf" "$HOME/.tmux.conf"

# ssh
ln -sfn "$HOME/dotfiles/ssh.config" "$HOME/.ssh/config"

# vim
ln -sfn "$HOME/dotfiles/vimrc" "$HOME/.vimrc"

mkdir -p ~/.config

# neovim
ln -sfn "$HOME/dotfiles/nvim" "$HOME/.config/nvim"

# clangd
mkdir -p ~/.config/clangd
ln -sfn "$HOME/dotfiles/clangd.config" "$HOME/.config/clangd/config.yaml"

# git
USER_NAME="Jian-Lin Li"
USER_EMAIL="lijianlin1999@gmail.com"

while getopts "n:e:" opt; do
  case $opt in
    n)
      USER_NAME="$OPTARG"
      ;;
    e)
      USER_EMAIL="$OPTARG"
      ;;
  esac
done

git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"
git config --global core.editor "vim"
