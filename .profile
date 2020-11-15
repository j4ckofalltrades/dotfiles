# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# private bin
if [[ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# solarized dirclors
eval $(dircolors "$HOME/.dir_colors/dircolors")

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

export PATH