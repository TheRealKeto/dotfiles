# Exports

# Establish configuration path regardless of standard
export CONFIG_HOME="$HOME/.config"

# Use custom zsh history file
export HISTFILE="$HOME/.zshhistory"

# Always reflect tty output
# This is only needed for gpg-agent to work correctly
export GPG_TTY="$(tty)"

# Set up exports based on availability
#
# Much like aliases, only change exports if they're
# present in PATH or in any way, shape, or form.
create_export() {
    if command -v "$2" &>/dev/null; then
        export "$1"="$2"
    fi
}

# Use micro as the default editor
create_export "EDITOR" "micro"
create_export "VISUAL" "$EDITOR"

# Poetry
export POETRY_CONFIG_DIR="$CONFIG_HOME/poetry"
export POETRY_CACHE_DIR="$POETRY_CONFIG_DIR"

# Golang
export GOPATH="$CONFIG_HOME/go"
export GOCACHE="$GOPATH/cache"
export GOMODCACHE="$GOPATH/cache/mod"
