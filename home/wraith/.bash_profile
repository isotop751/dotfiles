#
# ~/.bash_profile
#

if [[ -f "${HOME}/.config/customization/environ/export.d/export.sh" ]]; then
	source "${HOME}/.config/customization/environ/export.d/export.sh"
fi

if [[ -f "${HOME}/.config/customization/environ/alias.d/alias.sh" ]]; then
	source "${HOME}/.config/customization/environ/alias.d/alias.sh"
fi

if  [[ -f $HOME/.bashrc ]]; then
	source $HOME/.bashrc
fi