" map leader to space
let mapleader = " "

" remove search '/' highlight
nmap <silent> <Leader>l :nohlsearch<CR>

" buffers
nnoremap <silent> <Leader>n :bn<CR>
nnoremap <silent> <Leader>p :bp<CR>
nnoremap <silent> <Leader>d :bd<CR>

" splits
nnoremap <silent> <Leader>+ :vsp <CR>
nnoremap <silent> <Leader>- :sp <CR>

" cycle between splits using ctrl+hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" keep cursor centered when browsing search
nnoremap n nzz
nnoremap N Nzz

" prevent undo from removing everything
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap [ [<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap { {<c-g>u
inoremap = =<c-g>u

" moving lines, selection in all modes
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" FZF
nnoremap <silent> <C-O> <cmd>:Files<cr>
nnoremap <silent> <C-F> <cmd>:Rg<cr>
nnoremap <silent> <C-B> <cmd>:Buffers<cr>

" NerdTree
map <silent> <C-M> :NERDTreeFind <CR>
map <silent> <C-N> :NERDTreeToggle <CR>

" Save file as sudo when no sudo permissions
cmap w!! w !sudo tee > /dev/null %
