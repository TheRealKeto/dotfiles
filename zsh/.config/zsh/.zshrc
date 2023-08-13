# Make it easier to add directories to PATH
# Credit to jonpalmisc: https://github.com/jonpalmisc/dotfiles
path_prepend() {
    [ -d "$1" ] && path=($1 $path)
}

typeset -U path

# Make it easier to add completion paths to ZSH
comp_prepend() {
    [ -d "$1" ] && fpath=($1 $fpath)
}

# Rust/cargo
path_prepend "$HOME/.cargo/bin"

# User binaries
path_prepend "$HOME/.local/bin"

# Procursus
path_prepend "/opt/procursus/lib"
path_prepend "/opt/procursus/bin"
comp_prepend "/opt/procursus/share/zsh/site-functions"

autoload -Uz compinit
compinit
_comp_options+=(globdots)

setopt MENU_COMPLETE
setopt AUTO_LIST
setopt COMPLETE_IN_WORD

# History options
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST

# Add Procursus exports, if available
if [ -f "/opt/procursus/.procursus_strapped" ]
then
    source "$ZDOTDIR/procursus.zsh"
fi

source "$ZDOTDIR/exports.zsh"
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/suggestions.zsh"
source "$ZDOTDIR/highlighting.zsh"
