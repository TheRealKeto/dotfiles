# Always use GNU Make on macOS, if present
case "$(command -v gmake | xargs basename)" in
    gmake) alias "make=gmake" ;;
    *) ;;
esac

# Other aliases
alias "ls=lsd -a --icon=never"
alias "bat=bat --theme=\"TwoDark\""
alias "curl=curl --hsts $HOME/.curl_hsts_cache_procursus.txt"
