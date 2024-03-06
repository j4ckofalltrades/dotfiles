alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

alias c='clear'

alias k='kubectl'
complete -o default -F __start_kubectl k
alias kctx='kubectx'
alias kns='kubens'

alias ls='eza'
alias ll='eza -la'

alias cat='bat'
alias top='btop'
