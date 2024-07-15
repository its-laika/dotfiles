### Arch
# Use ssh-agent started via systemd
if [[ -z "$SSH_AUTH_SOCK" ]]; then export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"; fi
# Support for special chars in terminal
export LANG="de_DE.UTF-8"
bindkey "^[[3~" delete-char

### .NET
export ASPNETCORE_ENVIRONMENT="Local"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

### Rust / Cargo
. "$HOME/.cargo/env"

### zsh
export LC_ALL=de_DE.UTF-8
export LANG=de_DE.UTF-8

alias l="ls -lisah"
setopt auto_cd
alias scp="rsync -a -v "

[ -f "$HOME/.banner" ] && clear && cat "$HOME/.banner"

### Starship
eval "$(starship init zsh)"
