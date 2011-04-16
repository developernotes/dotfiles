#!/bin/sh

emacsclient "${1}" \
    2> /dev/null

if [ $? -ne 0 ]; then
    EOPEN_DIR="${PWD}" EOPEN_FILE="${1}" emacs
fi