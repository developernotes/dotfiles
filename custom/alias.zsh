
case `uname` in
    CYGWIN*)
        alias open='explorer'
        alias e="`cygpath -m $ZSH`/custom/eopen.sh"
        ;;
esac
