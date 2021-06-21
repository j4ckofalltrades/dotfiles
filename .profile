# if running bash
if [[ -n "$BASH_VERSION" ]]; then
  # include .bashrc if it exists
  if [[ -f "$HOME/.bashrc" ]]; then
    . "$HOME/.bashrc"
  fi
fi

# private bin
if [[ -d "$HOME/.local/bin" ]] ; then
  PATH="$HOME/.local/bin:$PATH"
fi

eval $(dircolors "$HOME/.dir_colors/dircolors")
export TERM="xterm-256color"

# git branch in terminal win title
source "$HOME/.local/bin/branch-win-title.sh"

# powerline
$(powerline-daemon -q)
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source "$(python3 -m site --user-site)/powerline/bindings/bash/powerline.sh"

# smart caps lock
source "$HOME/.xprofile"

if [[ -d "$HOME/.sdkman" ]]; then
  export SDKMAN_DIR="$HOME/.sdkman"
  [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

if [[ -d "$HOME/.nvm" ]]; then
  export NVM_DIR="$HOME/.nvm"
  [[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
  [[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"
fi

if [[ -d "$HOME/.pyenv" ]]; then
  PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"   
fi

if [[ -d "$HOME/.go" ]]; then
  PATH="$HOME/.go/bin:$PATH"
fi

if [[ -d "$HOME/.kubectx" ]]; then
  PATH="$HOME/.kubectx:$PATH"
fi

# if tmux is executable, X is running, and not inside a tmux session, then try to attach.
# if attachment fails, start a new session
# https://wiki.archlinux.org/title/Tmux#Start_tmux_on_every_shell_login
if [[ -x "$(command -v tmux)" ]] && [[ -n "${DISPLAY}" ]]; then
  [[ -z "${TMUX}" ]] && { tmux attach || tmux; } >/dev/null 2>&1
fi

export PATH
