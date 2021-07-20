#!/bin/bash
if ! command -v xsel &> /dev/null
then
    xmessage "xsel could not be found"
    exit
fi

xsel -p >porta
notify-send "$(head -c 30 porta) (...) $(tail -c 10 porta)" " $(cat porta | wc -l) lines\n $(cat porta | wc -w) words\n $(cat porta | wc -m) characters"

if ! command -v notify-send &> /dev/null
then
    xmessage " $(cat porta | wc -l) lines - $(cat porta | wc -w) words - $(cat porta | wc -m) characters"
    exit
fi


