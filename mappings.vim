" map leader to space
let mapleader = " "

" remove search '/' highlight
nmap <silent> <Leader>l :nohlsearch<CR>

" buffers
nnoremap <silent> <Leader>n :bn<CR>
nnoremap <silent> <Leader>p :bp<CR>
nnoremap <silent> <Leader>d :bd<CR>

" splits
nnoremap <silent> <Leader>" :vsp <CR>
nnoremap <silent> <Leader>% :sp <CR>

" cycle between splits using ctrl+hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" fzf
nnoremap <silent> <C-P> :Files<CR>
nnoremap <silent> <C-F> :Ag<CR>

" NerdTree
map <silent> <C-M> :NERDTreeFind <CR>
map <silent> <C-N> :NERDTreeToggle <CR>

" Save file as sudo when no sudo permissions
cmap w!! w !sudo tee > /dev/null %
