
function reload-zsh-config () {
    source ~/.zshrc
}

function emacs-start-daemon () {
    emacs --daemon
}

function emacs-kill-daemon () {
    emacsclient -e '(kill-emacs)' 2> /dev/null
}

function kill-diskimages-helper () {
    ps -A | grep diskimages-helper | awk '{print $1}' | xargs kill -9 2> /dev/null
}