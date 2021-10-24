if [[ $(uname -s) = "Darwin" ]]; then
  alias ls='gls --color=auto'
  alias ll='ls -la'
fi

# k8s
alias kc='kubectl'
alias kcx='kubectx'
alias kns='kubens'
