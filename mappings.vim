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

" do silversearch (ag) with the word under cursor
nmap <F3> :Ack! <cword><CR>

" replace word under cursor
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
