# Variables for aliases
export LS_OPTS="--color=auto -A"
export SSH_DIR="/home/sean/.ssh"
export VPN_DIR="/home/sean/.config/openvpn"

# Home servers
alias curry="ssh sean@192.168.66.11"
alias taco="ssh sean@192.168.66.10"
alias nephilim="ssh sean@192.168.66.100"

# Shortcut Aliases
alias ls="ls ${LS_OPTS}"
alias sudo="sudo "
alias grep="grep --color=auto"
alias update="sudo apt update && sudo apt upgrade"
alias wget="wget -c"
alias vi="vim"
alias startvpn="sudo protonvpn-cli -connect"
alias stopvpn="sudo protonvpn-cli -disconnect"

# Path Aliases
alias Storage="cd /media/sean/Storage/"

# WINE Aliases
alias wine64="WINEPREFIX=\"$HOME/.wine\" wine"
alias wine32="WINEPREFIX=\"$HOME/.wine32\" wine"
alias winetricks64="WINEPREFIX=\"$HOME/.wine\" winetricks"
alias winetricks32="WINEPREFIX=\"$HOME/.wine32\" winetricks"