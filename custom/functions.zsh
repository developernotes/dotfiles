
function reload-zsh-config () {
    source ~/.zshrc
}

function emacs-start-daemon () {
    emacs --daemon
}

function emacs-kill-daemon () {
    emacsclient -e '(kill-emacs)' 2> /dev/null
}
