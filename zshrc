#!/bin/bash

# zsh
## Set target path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

## zsh theme
ZSH_THEME="simple"

## zsh hyphen-insensitive true
HYPHEN_INSENSITIVE="true"

## set zsh plugins
plugins=(z git history zsh-autosuggestions zsh-syntax-highlighting)

## update automatically without asking
zstyle ':omz:update' mode auto

# set up PATH
if command -v go &>/dev/null; then
    export PATH=$PATH:$(go env GOPATH)/bin
fi

# source zsh configuration
source $ZSH/oh-my-zsh.sh
