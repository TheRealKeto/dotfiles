# .zshrc

# Source modules
source "$HOME/.config/zsh/nature.zsh"
source "$HOME/.config/zsh/general.zsh"
source "$HOME/.config/zsh/exports.zsh"
source "$HOME/.config/zsh/aliases.zsh"

# Use custom source function to source scripts
# depending on availability.
source_file() {
    [ -f "$1" ] && source "$1"
}

source_file "$CONFIG_HOME/zsh/highlighting.zsh"
