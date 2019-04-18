function book --description 'List books and upon selection open them in pdf reader'
	set bookdir $HOME/doc/book/
	set bookname (find $bookdir -type f | sed "s|$bookdir||g" | fzf --height 40% --reverse)
	zathura --fork $bookdir$bookname
end