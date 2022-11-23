# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# install oh-my-zsh if it doesn't exist
if [ ! -d "~/.oh-my-zsh" ]; then
    print -P "%F{33}▓▒░ %F{220}Installing oh-my-zsh…%f"
    # command will bypass functions and aliases; going straight to system PATH
    command sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    command git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    command git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi

# enterprise2
export PATH=~/enterprise2:$PATH
export PATH=$PATH:/usr/local/go/bin
eval "$(rbenv init -)"
export GITHUB_HOSTNAME=$(hostname)
export DEV_MODE=1
export OVERLAY_VM_FILES=no

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="simple"
HYPHEN_INSENSITIVE="true"

plugins=(z git history zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
