#!/bin/sh

if [[ "${1}" == "" ]]; then
    emacsclient -t
else
    emacsclient -nw "${1}" \
        2> /dev/null
fi

if [ $? -ne 0 ]; then
    emacs --daemon
    emacsclient "${1}"
fi
