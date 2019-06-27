set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Put all your plugins here
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
" Plugin 'itchyny/lightline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" So that the airline status bar is always present
set laststatus=2

" syntax enable
syntax on
colorscheme badwolf " molokai

set number
set linebreak
set incsearch

" Searches with no capitals are case insensitive, while those with capitals are case sensitive
set smartcase
set ignorecase

" let g:powerline_pycmd="py3"
let g:airline_theme="dark"
let g:airline_powerline_fonts=1
let g:airline_theme="minimalist" " try them out with :AirlineTheme <Tab>

" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1

" Customize section with the line and column numbers
let g:airline_section_z = '%3p%% %l/%L:%c'

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

" We see the mode in the statusline so we don't need it here
set noshowmode

" Show current command as it is being typed
set showcmd

" Autosource .vimrc as soon as you save it!
autocmd BufWritePost .vimrc source %

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" set runtimepath^=~/.vim/bundle/ctrlp.vim
" set runtimepath^=~/.vim/bundle/lightline.vim

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

" An alternative python options
" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix

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

" Disable arrow movement, resize splits instead.
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

let python_highlight_all=1

