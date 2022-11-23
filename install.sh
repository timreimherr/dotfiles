#!/bin/bash

# git config
git config --global user.name "Tim Reimherr"
git config --global user.email "timreimherr@github.com"
git config --global core.editor vim
git config --global pager.branch false
git config --global push.default current
git config --global alias.lo  "log --pretty='format:%C(auto)%h %C(green)%an %C(auto)%s' -10"

while true; do
  read -rep $'\nReady to continue and apply the symlinks? (y) This will overwrite ~/.zshrc' y
  case "${y}" in
      [Yy]*)

          break;;
      *) echo "Please answer y or CTRL+c the script to abort everything";;
  esac
done

# links
ln -s ~/.dotfiles/.zshrc ~/.zshrc

# zsh 
if [ "$SHELL" != "/usr/bin/zsh" ]; then
    sudo apt install -y zsh
    zsh
fi;

