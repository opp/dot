clear

## autoload vcs and colors
autoload -Uz vcs_info
autoload -U colors && colors

# enable only git
zstyle ':vcs_info:*' enable git 

# setup a hook that runs before every ptompt. 
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# add a function to check for untracked files in the directory.
# from https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
# 
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        # This will show the marker if there are any untracked files in repo.
        # If instead you want to show the marker only if there are untracked
        # files in $PWD, use:
        #[[ -n $(git ls-files --others --exclude-standard) ]] ; then
        hook_com[staged]+='!' # signify new files with a bang
    fi
}

zstyle ':vcs_info:*' check-for-changes true
# zstyle ':vcs_info:git:*' formats " %r/%S %b %m%u%c "
zstyle ':vcs_info:git:*' formats " %{$fg[blue]%}(%{$fg[red]%}%m%u%c%{$fg[yellow]%}%{$fg[magenta]%} %b%{$fg[blue]%})"

PROMPT="%B%{$fg[blue]%}[%{$fg[white]%}%n%{$fg[red]%}@%{$fg[white]%}%m%{$fg[blue]%}] %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+="\$vcs_info_msg_0_ "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.

# Set I-beam as default cursor
# echo -ne '\e[5 q'

# aliases
alias update="sudo apt-get update && sudo apt-get upgrade && flatpak update"
alias nsd="killall speech-dispatcher"
alias cl="clear"
alias py="python3"
alias q="exit"
alias cat="bat" # https://github.com/sharkdp/bat
alias ls="lsd" # https://github.com/Peltoche/lsd
alias l="lsd -lh"
alias la="lsd -lah"
alias lt="lsd --tree"
alias rm='rm -iv'
alias cp='cp -v'
alias mv='mv -v'
alias et='exiftool' # https://www.exiftool.org/install.html
alias ..='cd ..'
alias ytdl="python3 /usr/local/bin/youtube-dl"

# git aliases
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -mv'

# Load plugins -- should be last.
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # https://github.com/zsh-users/zsh-syntax-highlighting
source ~/.zsh/sudo/sudo.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
