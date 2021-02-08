# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=rasedups:ignoreboth

alias ls='ls --color=auto'

PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

set -o noclobber

rm() { command rm -i "${@}"; }
cp() { command cp -i "${@}"; }
mv() { command mv -i "${@}"; }

