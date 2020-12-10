# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Special characters are not working in st terminal so we are using these as fallback
set __fish_git_prompt_char_cleanstate 'o'
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_invalidstate '#'
set __fish_git_prompt_char_stagedstate '+'
set __fish_git_prompt_char_stashstate '$'
set __fish_git_prompt_char_stateseparator '|'
set __fish_git_prompt_char_untrackedfiles '%'
set __fish_git_prompt_char_upstream_ahead '>'
set __fish_git_prompt_char_upstream_behind '<'
set __fish_git_prompt_char_upstream_diverged '<>'
set __fish_git_prompt_char_upstream_equal '='
set __fish_git_prompt_char_upstream_prefix ''

function fish_prompt --description 'Write out the prompt'
	set_color -o E51A1A
	echo -n -s "$USER"
	set_color 4B96EB 
	echo @(prompt_hostname) (pwd) (fish_git_prompt)
	echo -n -s '> '
	set_color normal
end
