#!/bin/bash

KEYFILE="./test_key"
HOSTS="./hosts.yml"
PLAYBOOK="./playbook.yml"
SWAP_PATH="/media/sean/Games/WindowsVM/swapfile"

if [[ $1 == "setup" ]]; then
    sudo swapon $SWAP_PATH
    i=1
    while [[ $i -le 4 ]]; do
        sudo vmplayer &
        i=$(( $i + 1 ))
    done
    exit 0
elif [[ $1 == "check" ]]; then
    ansible-playbook -i $HOSTS $PLAYBOOK --key-file $KEYFILE -v --check
    exit 0
elif [[ $1 == "run" ]]; then
    ansible-playbook -i $HOSTS $PLAYBOOK --key-file $KEYFILE
    exit 0
elif [[ $1 == "stop" ]]; then
    sudo kill -9 $(ps aux | grep -i 'vmplayer' | grep -v 'grep' | awk '{ print $2 }')
    exit 0
else
    echo "Usage: $0 (setup|check|run|stop)"
    exit 1
fi

