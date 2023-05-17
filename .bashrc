#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Install Ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias ls='ls --color=auto'
alias less='less -Q'
alias man='man -P "less -Q"'
alias feh='feh --scale-down --auto-zoom'
alias su='su --login' # clears env variables so there are no git errors
alias grep-color='grep --color=always -nRi' # colors, line numbers, recursive, follow symbolic links, ignore case
alias now='date +%Y%m%d%H%M' # useful for adding to filenames with $(now)
alias xc='xclip -selection clipboard'
alias dotfiles='/usr/bin/git --git-dir=$HOME/dev/repo/dotfiles --work-tree=$HOME'
alias exa='exa -l --git'
alias tsd='transmission-daemon'
alias tsr='transmission-remote'
alias ldg='ledger --date-format "%Y/%m/%d" -f ~/doc/note/evernote/ledger.dat'

# Cool colored prompt (git removed because we have it bellow)
# https://stackoverflow.com/questions/4133904/ps1-line-with-git-current-branch-and-colors
function color_my_prompt {
    local __user_and_host="\[\033[01;32m\]\u\[\033[01;34m\]@\h"
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[34m\]"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\n\[\033[34m\]>"
    local __last_color="\[\033[00m\]"
    # export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
    export PS1="$__user_and_host $__cur_location $__prompt_tail$__last_color "
}
color_my_prompt

# From LukeSmith
# export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Fancy git prompt, if you don't want to use the one above
# https://github.com/magicmonty/bash-git-prompt
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

# Several fallback prompts
#PS1='> '
#PS1='[\u@\h \W]\$ '
#PS1='\[\033[1;33m\]\u\]\[\033[1;37m\]@\[\033[1;32m\]\h \[\e[1;36m\][\l] \[\033[1;31m\][\w] \n\[\033[1;31m\]>> \[\033[00m\]'

# Start keychain program which manages ssh-agent between bash sessions
eval $(keychain --eval --quiet --noask)

# Share bash history between terminals

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add custom .scripts folder to PATH
export PATH="$PATH:$HOME/.scripts"

# Add local ~/bin folder to PATH
export PATH="$PATH:$HOME/bin"

# export EDITOR='subl --wait'
export EDITOR=vim
export NNN_OPENER=rifle

# Source fzf scripts
# source $HOME/.scripts/fzfscripts

# Enable Miniconda for current user
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

