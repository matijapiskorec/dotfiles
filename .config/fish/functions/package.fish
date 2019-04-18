function package --description 'List installed packages and upon selection show info'
	pacman -Qe | fzf --height 40% --reverse | awk "{print \$1}" | xargs -r pacman -Qi
end