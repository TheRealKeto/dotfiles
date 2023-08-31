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

# Manipulate the runtime search path so that it's easier
# for the compiler to find libraries.
rpath_prepend() {
    [ -d "$1" ] && rpath=($1 $rpath)
}

typeset -TUx DYLD_FALLBACK_LIBRARY_PATH rpath

rpath_prepend "$HOME/.local/lib"
rpath_prepend "/opt/procursus/lib"

# CPATH setup
cpath_prepend() {
    [ -d "$1" ] && cpath=($1 $cpath)
}

typeset -TUx CPATH cpath

cpath_prepend "/opt/procursus/include"

# LIBRARY_PATH setup
libpath_prepend() {
    [ -d "$1" ] && libpath=($1 $libpath)
}

typeset -TUx LIBRARY_PATH libpath

libpath_prepend "/opt/procursus/lib"
