if [[ $(uname -s) = "Darwin" ]]; then
  alias ls='ls -G'
  alias ll='ls -laG'
fi

# k8s
alias k='kubectl'
complete -o default -F __start_kubectl k
alias kctx='kubectx'
alias kns='kubens'
