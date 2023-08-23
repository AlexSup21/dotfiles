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
alias vi='nvim'

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
export PATH=/home/alex/.nimble/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/home/alex/.dotnet/tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:~/.dotnet/tools:~/.dotnet/tools
