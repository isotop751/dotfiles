#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source ~/.profile
source /usr/share/nvm/init-nvm.sh

export EDITOR=vim

# zoxide
eval "$(zoxide init bash)"
