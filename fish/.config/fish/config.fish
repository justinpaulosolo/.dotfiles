set fish_greeting ""

alias ls "exa -al --icons --color=always --group-directories-first"
alias ll "exa -l -g --icons --color=always --group-directories-first"
alias cat "bat"

if type -q starship
	eval (starship init fish)
end

fish_vi_key_bindings

if status is-interactive
    # Commands to run in interactive sessions can go here
end
