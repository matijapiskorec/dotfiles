function doc --description 'List Latex projects and open appropriate .tex file in text editor'
	set latexdir $HOME/doc/latex/
	set latexproject (find $latexdir -maxdepth 1 -type d | sed "s|$latexdir||g" | fzf --height 40% --reverse) 
	subl -n -a $latexdir$latexproject/ $latexdir$latexproject/*.tex
	zathura --fork $latexdir$latexproject/*.pdf
	cd $latexdir$latexproject/
end