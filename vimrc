set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" The bundles you install will be listed here
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'sjl/gundo.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'bling/vim-airline'

filetype plugin indent on

" The rest of your config follows here
syntax on

colorscheme quagmire

set hidden
set wildmenu
set showcmd
set hlsearch

" Highlight current line
set cursorline

" Faster redraw
set ttyfast
set lazyredraw

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F10> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F10>

set colorcolumn=80
highlight colorcolumn guibg=lightslategray

set go-=m
set go-=T

set guioptions+=a

" Font settings
set guifont=Monospace\ 8 

" NERDTree configs
let g:NERDTreeDirArrows=0
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_autoclose=0

" Create Tags [disabled]
"function CreateTags()
"    let curNodePath = g:NERDTreeFileNode.GetSelected().path.str()
"    exec ':!ctags -R --languages=php,javascript -f ' . curNodePath . '/tags ' . curNodePath
"endfunction

" normal mode mappings
nmap <F4> /<C-R><C-W><CR>
"nmap <F5> :call CreateTags()<CR>
nmap <F6> :NERDTreeToggle<CR>
"nmap <F7> :TlistToggle<CR>

" Buffer Explorer
nmap <F8> :BufExplorer<CR>

" paste
nmap <C-V> "+p
vmap <C-V> "+p
imap <C-V> <C-O>"+p<CR>

" copy
nmap <C-C> "+yy
vmap <C-C> "+y

" move tabs
nmap <silent> <C-S-PageDown> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nmap <silent> <C-S-PageUp> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Change the leader to comma
let mapleader=","
nnoremap <leader>u :GundoToggle<CR>

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>

" automatically change window's cwd to file's dir
" set autochdir

" Change working files dirs to home .vim folder 
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" I prefer spaces to tabs
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1

" Folding is fun
set foldmethod=indent
set foldnestmax=2
set foldenable

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" vim-airline
" let g:airline_powerline_fonts = 1
