# general aliases
alias update="sudo apt-get update && sudo apt-get upgrade && flatpak update"
alias nsd="killall speech-dispatcher"
alias cl="clear"
alias py="python3"
alias cat="bat" # https://github.com/sharkdp/bat
alias ls="exa" # https://github.com/ogham/exa
alias l="exa -la"
alias ll="exa -l"
alias lt="exa -laT"
alias rm='rm -iv'
alias cp='cp -v'
alias mv='mv -iv'
alias et='exiftool' # https://www.exiftool.org/install.html
alias open="xdg-open"

# python aliases
alias venv-create='python3 -m venv .venv'
alias activate-venv='source .venv/bin/activate.fish'

set fish_greeting

neofetch