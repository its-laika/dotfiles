set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Use ssh-agent started via systemd
if test -z "$SSH_AUTH_SOCK"
    set -Ux SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
end

# Set necessary locales
set -Ux LC_ALL de_DE.UTF-8
set -Ux LANG de_DE.UTF-8

### .NET
set -Ux ASPNETCORE_ENVIRONMENT Local
set -Ux DOTNET_CLI_TELEMETRY_OPTOUT 1

if test -d "$HOME/.dotnet"
    set -Ux DOTNET_ROOT "$HOME/.dotnet"
    fish_add_path -a "$HOME/.dotnet"
end

### Rust
set -Ux RUST_LOG debug

if test -d "$HOME/.cargo/bin"
    fish_add_path -a "$HOME/.cargo/bin"
end

# Rancher desktop
if test -d "$HOME/.rd/bin"
    set --export --prepend PATH "$HOME/.rd/bin"
end

### fish
abbr -a l ls -lisah
abbr -a scp rsync -a -v

if test -f "$HOME/.banner"
    clear
    cat "$HOME/.banner"
end

### Starship
starship init fish | source
