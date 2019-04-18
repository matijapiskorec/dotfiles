# If script is run without arguments the fuzzy finder is run on all of the notes
# If there is any argument it is taken as the title of the new note

function note --description 'List notes and upon selection open in text editor'
	set notedir $HOME/doc/note/evernote/
	if count $argv > /dev/null
		set time (date +"%b %d %Y %H:%M:%S")
	    printf "Title: $argv\nDate: $time\nKeywords:\n\n# $argv\n" > $notedir"$argv".md
	    subl $notedir"$argv".md # -n -a $notedir 
	else
		set notename (find $notedir -type f | sed "s|$notedir||g" | fzf --height 40% --reverse) #  | xargs -r -I {} subl $notedir{} # -n -a $notedir $notedir{}
	    subl $notedir$notename
	end
end
