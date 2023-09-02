# Exports

# Establish configuration path regardless of standard
export CONFIG_HOME="$HOME/.config"

# Use custom zsh history file
export HISTFILE="$HOME/.zshhistory"

# Set larger history save size on all machines
export HISTSIZE=3000
export SAVEHIST="$HISTSIZE"

# Fix PGP signing by always reflecting tty output
export GPG_TTY="$(tty)"

# Set up exports based on availability
create_export() {
    if command -v "$2" &>/dev/null; then
        export "$1=$2"
    fi
}

# Use less as the default pager
create_export "PAGER" "less"

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
