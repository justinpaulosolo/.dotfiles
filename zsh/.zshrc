export EDITOR='vim'
PROMPT='%F{#00ffff}%n%f@%F{yellow3}%m%f %F{blue}%B%~%b%f '
alias ls='ls -G'

if [ -z "$TMUX" ]
then
  tmux attach -t TMUX || tmux new -s TMUX
fi
