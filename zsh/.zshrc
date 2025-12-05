# -----------------------------------------------------------------------------
# ZSH Configuration - Basic Setup
# -----------------------------------------------------------------------------

# Set the path to the Oh My Zsh installation (if you use it)
# export ZSH="$HOME/.oh-my-zsh"

# If not using a framework, load the Zsh library functions
# autoload -Uz compinit
# compinit

# -----------------------------------------------------------------------------
# History Configuration
# -----------------------------------------------------------------------------

# Keep history saved across sessions
HISTFILE=~/.zsh_history
HISTSIZE=10000        # Maximum number of commands in history list
SAVEHIST=10000        # Maximum number of commands saved in history file

# Share history between all sessions
setopt SHARE_HISTORY

# Append history lines instead of overwriting the file
setopt APPEND_HISTORY

# Remove duplicate entries from history
setopt HIST_IGNORE_DUPS

# Perform history expansion (like '!!' or '!$') immediately
setopt BANG_HIST

# -----------------------------------------------------------------------------
# Auto-completion and Menu Selection
# -----------------------------------------------------------------------------

# Enable extended globbing (e.g., matching files that are not dotfiles: *~*.c)
setopt EXTENDED_GLOB

# Allow tab-completion to navigate to unaliased directories
setopt AUTO_CD

# Automatically remove trailing spaces when completing command names
setopt AUTO_REMOVE_SLASH

# Menu selection: allows cycling through completion list with Tab
# If you don't like the menu, comment this out.
setopt MENU_COMPLETE

# Case-insensitive completion
zstyle ':completion:*' list-colors $LS_COLORS
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# -----------------------------------------------------------------------------
# Key Bindings and Customizations
# -----------------------------------------------------------------------------

# Enable color in 'ls' (usually done by 'alias ls='ls --color=auto'' in bash)
# In Zsh, the LS_COLORS variable is usually set by the system/desktop env
if [[ -x /usr/bin/dircolors ]]; then
    eval "$(dircolors -b)"
fi

# Use the Vi-style editing mode for command line
bindkey -v

# Increase the frequency of updating the terminal window size (useful for resizing)
# setopt NO_CHECK_JOBS
# setopt NO_CHECK_MAIL

# -----------------------------------------------------------------------------
# Aliases
# -----------------------------------------------------------------------------

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'

# Force color prompt
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# -----------------------------------------------------------------------------
# Paths
# -----------------------------------------------------------------------------
export PATH="$PATH:$(go env GOPATH)/bin"

# -----------------------------------------------------------------------------
# Prompt Setup (Basic)
# -----------------------------------------------------------------------------
eval "$(starship init zsh)"

# opencode
export PATH=/home/justinsolo/.opencode/bin:$PATH

# fnm
FNM_PATH="/home/justinsolo/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# bun completions
[ -s "/home/justinsolo/.bun/_bun" ] && source "/home/justinsolo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
