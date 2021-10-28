#!/bin/bash

set +x

# zsh
ln -sfn "$HOME/dotfiles/zshrc" "$HOME/.zshrc"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -sfn "$HOME/dotfiles/tmux.conf" "$HOME/.tmux.conf"
tmux source "$HOME/.tmux.conf"
bash "$HOME/.tmux/plugins/tpm/bindings/install_plugins"

# vim
ln -sfn "$HOME/dotfiles/vimrc" "$HOME/.vimrc"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qa

