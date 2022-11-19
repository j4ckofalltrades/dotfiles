if [[ $(uname -s) = "Darwin" ]]; then
  alias ls='ls -G'
  alias ll='ls -laG'
fi

# k8s
alias kc='kubectl'
alias kcx='kubectx'
alias kns='kubens'
