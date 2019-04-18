function arch --description 'List Arch notes and open them in text editor'
	set archdir $HOME/doc/note/archlinux-usb/ 
	find $archdir*.md -type f -printf "'%p'\n" | fzf --height 40% --reverse | xargs -r subl
end