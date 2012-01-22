
case `uname` in
    Darwin|Linux)
        alias e="$ZSH/custom/eopen.sh"
        ;;
    CYGWIN*)
        alias open='explorer'
        alias e="`cygpath -m $ZSH`/custom/eopen.sh"
        ;;
esac

alias lein='nocorrect lein'
alias java='nocorrect java'