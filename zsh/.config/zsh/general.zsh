# Completions

# Allow prepending zsh completions to FPATH
comp_prepend() {
    [ -d "$1" ] && fpath=($1 $fpath)
}

comp_prepend "/opt/procursus/share/zsh/site-functions"

# Use built-in completion system
autoload -Uz compinit
compinit
_comp_options+=(globdots)

setopt MENU_COMPLETE
setopt AUTO_LIST
setopt COMPLETE_IN_WORD

# History

# Remove duplicates when trimming history and
# never allow duplicate entries in history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST

# In searches, ignore duplicates
setopt HIST_FIND_NO_DUPS
