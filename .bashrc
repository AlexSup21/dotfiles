#
# ~/.bashrc
#

export PATH="${PATH}:~/.dotnet/tools"
export EDITOR=nvim
export VISUAL=nvim

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --group -laa --icons --group-directories-first --git'
alias lsc='exa --group -laa --icons --group-directories-first --git --sort=created'
alias lsm='exa --group -laa --icons --group-directories-first --git --sort=old'
alias grep='grep --color=auto'
alias tree='exa --tree -a'
alias bm='bashmount'

#PS1="$DEFAULT"
DEFAULT="$PS1"

#PS1='[\u@\h \W]\$ '

RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
BLUE="\[$(tput setaf 4)\]"
WHITE="\[$(tput setaf 7)\]"
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"

#PS1="${BOLD}${RED}@${GREEN}\u${WHITE}: ${BLUE}\w\n${WHITE}└\$ ${RESET}"
#PS1="${BOLD}${BLUE}\w\n${GREEN}╚\$ ${RESET}"
PS1="${BOLD}${BLUE}\w\n${GREEN}>> ${RESET}"

export PATH=/home/alex/.nimble/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/home/alex/.dotnet/tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:~/.dotnet/tools:~/.dotnet/tools

# Fun random commands
funcmds=( \
    "neofetch" \
    "cowsay $(fortune -s)" \
    "figlet i use arch btw" \
)
${funcmds[RANDOM % ${#funcmds[@]}]}

# Command autocomplete
bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'
complete -cf sudo
#bind 'set show-all-if-ambiguous on'
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind 'set completion-ignore-case on'
