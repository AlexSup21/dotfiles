#
# ~/.bashrc
#

export PATH="${PATH}:~/.dotnet/tools"
export EDITOR=nvim
export VISUAL=nvim

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --group -laa'
alias grep='grep --color=auto'
alias lst='exa --tree -a'

#PS1="$DEFAULT"
DEFAULT="$PS1"

#PS1='[\u@\h \W]\$ '

RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
BLUE="\[$(tput setaf 4)\]"
WHITE="\[$(tput setaf 7)\]"
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"

PS1="${BOLD}${RED}@${GREEN}\u${WHITE}: ${BLUE}\w\n${WHITE}└\$ ${RESET}"
