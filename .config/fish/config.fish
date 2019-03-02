alias ls 'ls --color=auto'
alias less 'less -Q'
alias man 'man -P "less -Q"'
alias feh 'feh --scale-down --auto-zoom'
alias su 'su --login' # clears env variables so there are no git errors
alias grep-color 'grep --color=always -nRi' # colors, line numbers, recursive, follow symbolic links, ignore case
alias now 'date +%Y%m%d%H%M' # useful for adding to filenames with $(now)
alias xc 'xclip -selection clipboard'
alias dotfiles '/usr/bin/git --git-dir=$HOME/dev/repo/dotfiles --work-tree=$HOME'

set fish_greeting