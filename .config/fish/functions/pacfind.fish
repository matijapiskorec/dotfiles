function pacfind --description 'Search pacman remote database for a package matching search term, then query it locally if it is installed'
	pacman -Ss "$argv" | sed '0~2d' | fzf --height 40% --reverse | awk "{print \$1}" | sed "s|.*/||g" | xargs -r pacman -Si
end