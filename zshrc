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
export PATH=$PATH:$(go env GOPATH)/bin

# source zsh configuration
source $ZSH/oh-my-zsh.sh

