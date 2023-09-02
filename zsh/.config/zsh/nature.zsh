# PATH setup

# Make it easier to add directories to PATH
#
# Credit to jonpalmisc for the original concept.
# https://github.com/jonpalmisc/dotfiles
#
# You'll see that I overuse this feature, but whatever.
path_prepend() {
    [ -d "$1" ] && path=($1 $path)
}

typeset -U path

# Rust/cargo
path_prepend "$HOME/.cargo/bin"

# User-installed binaries
path_prepend "$HOME/.local/bin"

# Procursus
path_prepend "/opt/procursus/sbin"
path_prepend "/opt/procursus/bin"

# Other environment variables

# Manipulate the runtime search fallback path so it's
# easier for the compiler to find missing libraries.
rpath_prepend() {
    [ -d "$1" ] && rpath=($1 $rpath)
}

typeset -Tx DYLD_FALLBACK_LIBRARY_PATH rpath

rpath_prepend "$HOME/.local/lib"
rpath_prepend "/opt/procursus/lib"

# CPATH setup
cpath_prepend() {
    [ -d "$1" ] && cpath=($1 $cpath)
}

typeset -Tx CPATH cpath

cpath_prepend "/opt/procursus/include"

# LIBRARY_PATH setup
libpath_prepend() {
    [ -d "$1" ] && libpath=($1 $libpath)
}

typeset -Tx LIBRARY_PATH libpath

libpath_prepend "/opt/procursus/lib"

# Prepend user configurations to pkg-config
pcpath_prepend() {
    [ -d "$1" ] && pcpath=($1 $pcpath)
}

typeset -Tx PKG_CONFIG_PATH pcpath

pcpath_prepend "$HOME/.local/lib/pkgconfig"
