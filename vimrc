set nocompatible    " not care about vi compat

set t_Co=256        " force 256 colors
set re=1            " use new regexp engine

set nobackup        " no backup files
set nowritebackup   " no backup file while editing
set noswapfile      " no swap files

set undofile                " save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " how many undos
set undoreload=10000        " number of lines to save for undo

let $VIMHOME = $HOME."/.vim"

source $VIMHOME/plugins.vim
source $VIMHOME/settings.vim
source $VIMHOME/mappings.vim
source $VIMHOME/plugins_config.vim
