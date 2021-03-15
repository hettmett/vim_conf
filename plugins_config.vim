" NERDTree configs
let g:NERDTreeIgnore = ['^\.svn$']
let g:NERDTreeDirArrows=0
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_autoclose=0


" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

let g:ctrlp_custom_ignore = {
\ 'dir':  '\v([\/]\(.(git|hg|svn)|nimcache)$',
\ 'file': '\v\.(exe|so|dll|ilk|exp|pdb|obj|lib)$',
\ }


if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor " replace grep

  let g:ctrlp_working_path_mode = 0
  let g:ctrlp_switch_buffer = 0
  let g:ctrlp_match_window = 'bottom,order:ttb'
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  let g:ctrlp_use_caching = 0

  let g:ackprg = 'ag --vimgrep'
endif

" Python mode
let g:pymode_python = 'python3'
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"

" Auto check on save
let g:pymode_lint_unmodified = 1

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

let g:pydocstring_formatter = "numpy"
