# Dotfiles

## Dependency
* nodejs
* wget
* npm
* yarn
* ripgrep
* fd-find

## Solve dependency on Ubuntu

```bash
# NodeJS
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# npm
sudo apt install npm

# wget 
sudo apt install wget

# yarn
npm install yarn

# clangd
sudo apt-get install clangd-12

# neovim telescope
sudo apt install -y ripgrep
sudo apt install -y fd-find
```

