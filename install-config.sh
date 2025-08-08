#!/bin/bash

set +x

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ""  --unattended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
ln -sfn "$HOME/dotfiles/zshrc" "$HOME/.zshrc"

# tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -sfn "$HOME/dotfiles/tmux.conf" "$HOME/.tmux.conf"
tmux source "$HOME/.tmux.conf"
bash "$HOME/.tmux/plugins/tpm/bin/install_plugins"

# ssh
ln -sfn "$HOME/dotfiles/ssh.config" "$HOME/.ssh/config"

# vim
ln -sfn "$HOME/dotfiles/vimrc" "$HOME/.vimrc"

# neovim
mkdir -p ~/.config
ln -sfn "$HOME/dotfiles/nvim" "$HOME/.config/nvim"
