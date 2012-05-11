case `uname` in
    Darwin|Linux)
        alias e="$ZSH/custom/eopen.sh"
        ;;
    CYGWIN*)
        alias open='explorer'
        alias e="`cygpath -m $ZSH`/custom/eopen.sh"
        alias npm="npm.cmd"
        alias mail="xargs -0 -I content /cygdrive/c/Program\ Files\ \(x86\)/Mozilla\ Thunderbird/thunderbird.exe -compose \"body='content'\""
        ;;
esac

alias lein='nocorrect lein'
alias java='nocorrect java'
