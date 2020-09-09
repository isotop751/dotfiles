# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' '' '' 'r:|[._-]=** r:|=**'
zstyle :compinstall filename '/home/leshen/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
#
# #

## keybindings for home and end and delete
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[3~" delete-char
