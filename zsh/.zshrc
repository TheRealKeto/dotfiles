# .zshrc

# Source modules
source "$HOME/.config/zsh/nature.zsh"
source "$HOME/.config/zsh/general.zsh"
source "$HOME/.config/zsh/exports.zsh"
source "$HOME/.config/zsh/aliases.zsh"

# Custom source function
#
# This is used to quietly source zsh scripts that add
# extra features to zsh.
source_file() {
    [ -f "$1" ] && source "$1"
}

source_file "$CONFIG_HOME/zsh/highlighting.zsh"
