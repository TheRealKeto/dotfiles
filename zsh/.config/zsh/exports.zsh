# I may be wrong to set this on macOS, but whatever
export XDG_CONFIG_HOME="$HOME/.config"

# Use custom history file
export HISTFILE="$ZDOTDIR/.zshhistory"

# Use whatever pager is available in PATH
export PAGER="pager"

# Procursus
export PROCURSUS="/opt/procursus"
export NO_PGP=1
export LIBRARY_PATH="$PROCURSUS/lib:$LIBRARY_PATH"
export CPATH="$PROCURSUS/include:$CPATH"

# Use Micro as the default editor, if present
if command -v micro &>/dev/null; then
    export EDITOR="micro"
    export VISUAL="$EDITOR"
fi

# Force bat pager to use macOS less
export BAT_PAGER="/usr/bin/less"

# Poetry
export POETRY_CONFIG_DIR="$XDG_CONFIG_HOME/poetry"

# Golang
export GOPATH="$XDG_CONFIG_HOME/go"
export GOCACHE="$GOPATH/cache"
export GOMODCACHE="$GOPATH/cache/mod"
