if [[ -n "$BASH_VERSION" ]]; then
  [[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
fi

PLATFORM="$(uname -s)"

[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"
[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
if [[ "$PLATFORM" = "Darwin" ]]; then
  [[ -f "opt/homebrew/bin/brew" ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ -f "$HOME/.dircolors/dircolors" ]]; then
  [[ "$PLATFORM" = "Linux" ]] && eval $(dircolors "$HOME/.dircolors/dircolors")
fi
export TERM="xterm-256color"

if [[ "$PLATFORM" = "Darwin" && -f "$(brew --prefix)/etc/bash_completion" ]]; then
  source "$(brew --prefix)/etc/bash_completion"
fi

# git branch in terminal win title
[[ -f "$HOME/.local/bin/branch-win-title.sh" ]] && source "$HOME/.local/bin/branch-win-title.sh"

# powerline
[[ "$PLATFORM" = "Darwin" ]] && PATH="$(python3 -m site --user-base)/bin:$PATH"

POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
if [[ "$PLATFORM" = "Darwin" ]]; then
  POWERLINE_BASE_DIR="$HOME/.local/lib/python3.9/site-packages/powerline"
else
  POWERLINE_BASE_DIR="$(python3 -m site --user-site)/powerline"
fi

export POWERLINE_BASE_DIR

source "$POWERLINE_BASE_DIR/bindings/bash/powerline.sh"
$(powerline-daemon -q)

if [[ -d "$HOME/.sdkman" ]]; then
  export SDKMAN_DIR="$HOME/.sdkman"
  [[ -f "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
fi

if [[ -d "$HOME/.nvm" ]]; then
  export NVM_DIR="$HOME/.nvm"
  if [[ $PLATFORM = "Darwin" ]]; then
	  NVM_DIR_HOMEBREW="$(brew --prefix)/opt/nvm"
    [[ -f "$NVM_DIR_HOMEBREW/nvm.sh" ]] && source "$NVM_DIR_HOMEBREW/nvm.sh"
    [[ -f "$NVM_DIR_HOMEBREW/etc/bash_completion.d/nvm" ]] && source "$NVM_DIR_HOMEBREW/etc/bash_completion.d/nvm"
  fi

  [[ -f "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
  [[ -f "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"
fi

if [[ -d "$HOME/.pyenv" ]]; then
  PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"   
fi

if [[ -d "$HOME/.rbenv" ]]; then
  PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

[[ -d "$HOME/.go" ]] && PATH="$HOME/.go/bin:$PATH"

if [[ -d "$HOME/.cargo" ]]; then
  PATH="$HOME/.cargo/bin:$PATH"
fi
source "$HOME/.cargo/env"

[[ "$PLATFORM" = "Darwin" ]] && export BASH_SILENCE_DEPRECATION_WARNING=1

eval $(thefuck --alias)

export GPG_TTY=$(tty)

if [[ -d "$HOME/.kubectx" ]]; then
  source "$HOME/.kubectx/completion/kubens.bash"
  source "$HOME/.kubectx/completion/kubectx.bash"
  PATH="$HOME/.kubectx:$PATH"
fi

[[ -f "$HOME/.gcloud/path.bash.inc" ]] && source "$HOME/.gcloud/path.bash.inc"
[[ -f "$HOME/.gcloud/completion.bash.inc" ]] && source "$HOME/.gcloud/completion.bash.inc"

# if tmux is executable, X is running, and not inside a tmux session, then try to attach.
# if attachment fails, start a new session
# https://wiki.archlinux.org/title/Tmux#Start_tmux_on_every_shell_login
if [[ -x "$(command -v tmux)" ]]; then
  [[ $PLATFORM = "Darwin" ]] && [[ -z "${TMUX}" ]] && { tmux attach || tmux; } >/dev/null 2>&1
  [[ $PLATFORM = "Linux" ]] && [[ -n "${DISPLAY}" ]] && [[ -z "${TMUX}" ]] && { tmux attach || tmux; } >/dev/null 2>&1
fi

export USE_GKE_GCLOUD_AUTH_PLUGIN=True

export PATH
