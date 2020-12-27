#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

bind 'set show-all-if-ambiguous on'
# bind 'TAB:menu-complete'
# bind '"\e[Z":menu-complete-backward'

if [[ -f "${HOME}/.config/customization/environ/export.d/export.sh" ]]; then
	source "${HOME}/.config/customization/environ/export.d/export.sh"
fi

if [[ -f "${HOME}/.config/customization/environ/alias.d/alias.sh" ]]; then
	source "${HOME}/.config/customization/environ/alias.d/alias.sh"
fi
