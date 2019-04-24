function article --description 'List articles and upon selection open them in pdf reader'
	set articledir $HOME/doc/article/
	set articlename (find $articledir -type f | sed "s|$articledir||g" | fzf --height 40% --reverse)
	zathura --fork $articledir$articlename
end