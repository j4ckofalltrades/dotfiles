if [[ -n "$BASH_VERSION" ]]; then
  [[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
fi

PLATFORM="$(uname -s)"

[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"
[[ -s "$HOME/.bash_functions" ]] && source "$HOME/.bash_functions"
[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
if [[ "$PLATFORM" = "Darwin" ]]; then
  [[ -f "opt/homebrew/bin/brew" ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ -f "$HOME/.dircolors/dircolors" ]]; then
  [[ "$PLATFORM" = "Linux" ]] && eval $(dircolors "$HOME/.dircolors/dircolors")
fi
export TERM="xterm-256color"

[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# git branch in terminal win title
[[ -f "$HOME/.local/bin/branch-win-title.sh" ]] && source "$HOME/.local/bin/branch-win-title.sh"


POWERLINE_BASE_DIR="$(python3 -m site --user-site)/powerline"
export POWERLINE_BASE_DIR

$(powerline-daemon -q)
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source "$POWERLINE_BASE_DIR/bindings/bash/powerline.sh"

if [[ -d "$HOME/.pyenv" ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi


if [[ -d "$HOME/.sdkman" ]]; then
  export SDKMAN_DIR="$HOME/.sdkman"
  [[ -f "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
fi

if [[ -d "$HOME/.nvm" ]]; then
  export NVM_DIR="$HOME/.nvm"
  if [[ $PLATFORM = "Darwin" ]]; then
    NVM_DIR_HOMEBREW="$(brew --prefix)/opt/nvm"
    [[ -f "$NVM_DIR_HOMEBREW/nvm.sh" ]] && source "$NVM_DIR_HOMEBREW/nvm.sh" --no-use
    [[ -f "$NVM_DIR_HOMEBREW/etc/bash_completion.d/nvm" ]] && source "$NVM_DIR_HOMEBREW/etc/bash_completion.d/nvm"
  fi

  [[ -f "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
  [[ -f "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"
fi


[[ -d "$HOME/.go" ]] && PATH="$HOME/.go/bin:$PATH"

if [[ -d "$HOME/.cargo" ]]; then
  PATH="$HOME/.cargo/bin:$PATH"
  source "$HOME/.cargo/env"
fi

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

[[ "$PLATFORM" = "Darwin" ]] && export BASH_SILENCE_DEPRECATION_WARNING=1

eval "$(zoxide init bash)"
eval "$(thefuck --alias)"

export PATH
