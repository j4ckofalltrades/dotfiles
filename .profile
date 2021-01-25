# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# private bin
if [[ -d "$HOME/.local/bin" ]] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# solarized dirclors
eval $(dircolors "$HOME/.dir_colors/dircolors")

# git branch in terminal win title
source "$HOME/.local/bin/branch-win-title.sh"

# terminal colors
export TERM="xterm-256color"

# powerline
$(powerline-daemon -q)
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source "$(python3 -m site --user-site)/powerline/bindings/bash/powerline.sh"

# smart caps lock
source "$HOME/.xprofile"

# sdkman
if [[ -d "$HOME/.sdkman" ]]; then
    export SDKMAN_DIR="$HOME/.sdkman"
    [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# nvm
if [[ -d "$HOME/.nvm" ]]; then
    export NVM_DIR="$HOME/.nvm"
    [[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
    [[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"
fi

# pyenv
if [[ -d "$HOME/.pyenv" ]]; then
   PATH="$HOME/.pyenv/bin:$PATH"                                                                                                                                                                                                       
   eval "$(pyenv init -)"                                                                                                                                                                                                                     
   eval "$(pyenv virtualenv-init -)"   
fi

# go
if [[ -d "$HOME/.local/go" ]]; then
   PATH="$HOME/.local/go/bin:$PATH"
fi

export PATH
