# Necessary, at least for Arch
bindkey "^[[3~" delete-char

alias l="ls -lisah"

export ASPNETCORE_ENVIRONMENT="Local"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Add own programs to zsh
[ -f "$HOME/.banner" ] && clear && cat "$HOME/.banner"

eval "$(starship init zsh)"
. "$HOME/.cargo/env"
