scriptencoding utf-8

filetype off
filetype plugin indent on

" APPEARANCE
syntax enable
colorscheme nofrils-dark

set laststatus=2    " always show statusline
set showmode        " display curent mode
set showcmd         " display incomplete commands
set number          " show line numbers

set cursorline      " Highlight current line

set list            " visual warnings for unsafe characters
set listchars=tab:▸·,trail:·,nbsp:●

" I prefer spaces to tabs
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1

autocmd Filetype javascript setlocal ts=2 sw=2 sts=0

" Folding is fun
set foldmethod=indent
set foldnestmax=2
set foldenable

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

" INTERFACE
set wildmenu
set wildignore=.svn,tmp
set wrap lbr                    " break by words
set backspace=indent,eol,start  " liberal backspacing in insert mode
set showmatch                   " show matching brackets when hovering
set viminfo='25,\"50,n~/.vim/.viminfo
set splitright

set history=50
set smartcase

" FASTER REDRAW
set ttyfast
set lazyredraw

" SEARCH
set ignorecase
" set incsearch
set hlsearch

" TECHNICAL
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

