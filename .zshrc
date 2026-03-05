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

# Tmux
alias tn="tmux new-session -s"
alias tl="tmux list-session"
alias ta="tmux attach-session"

# Obsidian path
alias cdobs='cd "/Users/justin/Library/Mobile Documents/iCloud~md~obsidian/Documents/Personal/"'

export TERM=tmux-256color
export GPG_TTY=$(tty)
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.aspire/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

eval "$(fnm env --use-on-cd --shell zsh)"

eval "$(starship init zsh)"


# pnpm
export PNPM_HOME="/Users/justin/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
