function notebook --description 'Choose a kernel then run jupyter notebook server in notebook directory'
	echo "Cannot run in fish shell:-( Please run me in bash!"
	# set notebookdir $HOME/dev/notebook/
	# set envdir (find $HOME/dev/env/ -maxdepth 1 -type d | fzf --height 40% --reverse)
	# exec bash -c "source $envdir/bin/activate; jupyter notebook --notebook-dir=$HOME/dev/notebook/"
	# jupyter notebook --notebook-dir=$HOME/dev/notebook/ # Does not work on its own because exec bash above takes the process!
end