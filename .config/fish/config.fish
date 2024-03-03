# general aliases
alias nsd="killall speech-dispatcher"
alias cl="clear"
alias py="python3"
alias cat="bat" # https://github.com/sharkdp/bat
alias ls="eza" # https://github.com/eza-community/eza
alias l="eza -laa"
alias ll="eza -l"
alias lt="eza -laT"
alias rm="rm -iv"
alias cp="cp -v"
alias mv="mv -iv"
alias et="exiftool" # https://www.exiftool.org/install.html
alias open="xdg-open"
alias private="fish --private"

# python aliases
alias venv-create="python3 -m venv .venv"
alias activate-venv="source .venv/bin/activate.fish"

set -g fish_greeting

neofetch
