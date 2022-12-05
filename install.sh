#!/bin/bash

# Sourced from https://stackoverflow.com/questions/59895/how-do-i-get-the-directory-where-a-bash-script-is-located-from-within-the-script
DIR_NAME="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# git config
git config --global user.name "Tim Reimherr"
git config --global user.email "timreimherr@github.com"
git config --global core.editor vim
git config --global pull.rebase false

# zsh
## Install oh-my-zsh
rm -rf "$HOME/.oh-my-zsh"
git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh"
export ZSH="${HOME}/.oh-my-zsh"
export ZSH_CUSTOM="${HOME}/.oh-my-zsh/custom"

## Install zsh plugins
rm -rf "$ZSH_CUSTOM/plugins/zsh-autosuggestions" 
rm -rf "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# link zshrc
ln -sf "$DIR_NAME/zshrc" "$HOME/.zshrc"
cp "$DIR_NAME/aliases.zsh" "$ZSH_CUSTOM"

# zsh 
if [ "$SHELL" != "/usr/bin/zsh" ]; then
    echo "Install zsh..."
    sudo apt install -y zsh
fi;

zsh