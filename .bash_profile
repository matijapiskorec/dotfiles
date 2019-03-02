#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Should allow unicode support in tty but it does not?
# [[ -x /usr/bin/unicode_start && $(tty) = /dev/tty? ]] && unicode_start

# Color terminal on tty
source ~/config/theme/red-blue/colors-tty.sh

# Basic Arch system information on first login
if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
  archey3
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Start graphical server if i3 not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx
