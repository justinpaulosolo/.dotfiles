# Aliases
# Git
alias gs="git status --short"
alias gd="git diff"

alias ga="git add"
alias gc="git commit"

alias gp="git push"
alias gu="git pull"

alias gl="git log"
alias gb="git branch"

alias gi="git init"
alias gcl="git clone"

export TERM=tmux-256color
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.aspire/bin:$PATH"

eval "$(fnm env --use-on-cd --shell zsh)"

eval "$(starship init zsh)"

