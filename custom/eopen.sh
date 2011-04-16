#!/bin/sh

emacsclient "${1}" \
    2> /dev/null

if [ $? -ne 0 ]; then
    emacs --daemon
    emacsclient "${1}"
fi
