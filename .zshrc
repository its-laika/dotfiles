# Necessary, at least for Arch
bindkey "^[[3~" delete-char

alias l="ls -lisah"

eval "$(starship init zsh)"
. "$HOME/.cargo/env"
