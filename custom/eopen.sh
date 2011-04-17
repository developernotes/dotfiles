#!/bin/sh

if [[ "${1}" == "" ]]; then
    emacsclient -c
else
    emacsclient "${1}" \
        2> /dev/null
fi

if [ $? -ne 0 ]; then
    emacs --daemon
    emacsclient "${1}"
fi
