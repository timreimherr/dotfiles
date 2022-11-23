#!/bin/bash

# git config
git config --global user.name "Tim Reimherr"
git config --global user.email "timreimherr@github.com"
git config --global core.editor vim
git config --global pager.branch false
git config --global push.default current
git config --global alias.lo  "log --pretty='format:%C(auto)%h %C(green)%an %C(auto)%s' -10"

# links
ln -s ~/.dotfiles/.zshrc ~/

# zsh 
if [ "$SHELL" != "/usr/bin/zsh" ]; then
    sudo apt install -y zsh
    zsh
fi;

