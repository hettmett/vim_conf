" Included plugins
runtime! ftplugin/man.vim " man pages


" External plugins
call plug#begin('~/.vim/plugged')

Plug 'python-mode/python-mode', { 'branch': 'develop' }

Plug 'scrooloose/nerdtree'
Plug 'davidhalter/jedi-vim'
Plug 'sjl/gundo.vim'
Plug 'kien/ctrlp.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-airline/vim-airline'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'scrooloose/nerdcommenter'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'

Plug 'sheerun/vim-polyglot'
Plug 'AndrewRadev/splitjoin.vim'

call plug#end()
