" map
let mapleader = " "

nmap <silent> <Leader>l :nohlsearch<CR>

" buffers
nnoremap <silent> <Leader>n :bn<CR>
nnoremap <silent> <Leader>p :bp<CR>
nnoremap <silent> <Leader>d :bd<CR>

" splits
nnoremap <Leader>" :vsp <CR>
nnoremap <Leader>% :sp <CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" fzf
nnoremap <silent> <C-P> :GFiles<CR>
nnoremap <silent> <C-F> :Ag<CR>

" CoC
nnoremap <C-I> :CocCommand prettier.formatFile<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" NerdTree
map <silent> <C-M> :NERDTreeFind <CR>
map <silent> <C-N> :NERDTreeToggle <CR>
