
case `uname` in
    Darwin)
        alias e="$ZSH/custom/eopen.sh"
        ;;
    CYGWIN*)
        alias open='explorer'
        alias e="`cygpath -m $ZSH`/custom/eopen.sh"
        ;;
esac
