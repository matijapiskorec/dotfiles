
" So that the airline status bar is always present
set laststatus=2

" syntax enable
syntax on
" colorscheme monokai
colorscheme molokai

set number
set linebreak
set incsearch

" Searches with no capitals are case insensitive, while those with capitals are case sensitive
set smartcase
set ignorecase

let g:powerline_pycmd="py3"
let g:airline_theme="dark"
let g:airline_powerline_fonts=1

let t_Co=256

" Custom fzf finders for common folders
command Note FZF ~/doc/note/evernote/
command Arch FZF ~/doc/note/archlinux-usb/

" Autoload when file changes
set autoread
augroup checktime
    au!
    if !has("gui_running")
        "silent! necessary otherwise throws errors when using command
        "line window.
        autocmd BufEnter        * silent! checktime
        autocmd CursorHold      * silent! checktime
        autocmd CursorHoldI     * silent! checktime
        "these two _may_ slow things down. Remove if they do.
        autocmd CursorMoved     * silent! checktime
        autocmd CursorMovedI    * silent! checktime
    endif
augroup END

" Show as much as possible of the last wrapped line, not just @
set display=lastline

" Highlight searches
set hlsearch

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

filetype indent on

" Python specific intendation options
augroup python_files
    autocmd!
    autocmd FileType python setlocal expandtab " tabs are spaces
    autocmd FileType Python set tabstop=4 " number of visual spaces per TAB
    autocmd FileType Python set softtabstop=4 " number of spaces in tab when editing
    autocmd FileType Python set smartindent " smart indentation when starting line
    autocmd FileType Python set autoindent 
    autocmd FileType Python set shiftwidth=4 " text intendation in columns 
augroup END

" Change the cursor in different modes
" Ps = 0  -> blinking block.
" Ps = 1  -> blinking block (default).
" Ps = 2  -> steady block.
" Ps = 3  -> blinking underline.
" Ps = 4  -> steady underline.
" Ps = 5  -> blinking bar (xterm).
" Ps = 6  -> steady bar (xterm).
let &t_SI = "\<Esc>[6 q" " bar shape in insert mode
let &t_SR = "\<Esc>[4 q" " underline shape in replace mode
let &t_EI = "\<Esc>[2 q" " block shape in normal mode

" Move lines up and down, similar to Sublime (not working!)
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Set vertical divider
set fillchars=vert:\ ,fold:-
" highlight VertSplit guibg=Orange guifg=Black ctermbg=6 ctermfg=0

