alias ls 'ls --color=auto'
alias less 'less -Q'
alias man 'man -P "less -Q"'
alias feh 'feh --scale-down --auto-zoom'
alias su 'su --login' # clears env variables so there are no git errors
alias grep-color 'grep --color=always -nRi' # colors, line numbers, recursive, follow symbolic links, ignore case
alias now 'date +%Y%m%d%H%M' # useful for adding to filenames with $(now)
alias xc 'xclip -selection clipboard'
alias dotfiles '/usr/bin/git --git-dir=$HOME/dev/repo/dotfiles --work-tree=$HOME'
alias cal 'cal -m'
alias exa 'exa -l --git'
alias tsd 'transmission-daemon'
alias tsr 'transmission-remote'
alias vifm 'vifmrun'
alias dwdiff 'dwdiff -P --color=red,blue'

set fish_greeting

set -x EDITOR vim
set -x NNN_OPENER rifle
