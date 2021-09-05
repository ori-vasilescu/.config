#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export AUR_PAGER="$HOME/.config/scripts/aurpager.sh"

if [ "$(tty)" = "/dev/tty1" ]; then
	startx
fi
