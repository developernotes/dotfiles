#!/bin/zsh

CLIENT=/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/bin/emacsclient
EMACS=/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs

if [[ "${1}" == "" ]]; then
    ${CLIENT} --tty 2> /dev/null
else
    ${CLIENT} -nw "${1}" \
        2> /dev/null
fi

if [ $? -ne 0 ]; then
    ${EMACS} --daemon
    if [[ "${1}" == "" ]]; then
        ${CLIENT} --tty
    else
        ${CLIENT} --tty "${1}"
    fi
fi
