# Aliases

# Aliases are made so long as whatever something is aliased
# to is installed, or exists in any way, shape, or form.
create_alias() {
    if command -v "$2" &>/dev/null; then
        alias "$1=$3"
    fi
}

create_alias "ls" "lsd" "lsd -a --icon never"
create_alias "bat" "bat" "bat --theme \"TwoDark\""

# Always use GNU make on macOS
create_alias "make" "gmake" "gmake"
