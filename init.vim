if has('win32')
  source ~/AppData/Local/nvim/plugins.vim
  source ~/AppData/Local/nvim/mappings.vim
else
  source ~/.config/nvim/plugins.vim
  source ~/.config/nvim/mappings.vim
endif

" config
syntax on
filetype plugin indent on
set autoread
set hidden
set nobackup
set number rnu
set nowritebackup
set relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set shortmess+=c
set updatetime=100
set gdefault
set inccommand=split
set splitbelow
set cursorline
set cursorcolumn
set timeoutlen=1000 ttimeoutlen=0
set fileformats=unix,dos,mac
set encoding=UTF-8
set showcmd
set noshowmode
set hlsearch
set sidescroll=6
set confirm
set autowriteall
set t_Co=256
set list!

" Theme
color gruvbox
hi Normal ctermbg=NONE

" highlight trailing spaces
hi ExtraWhitespace ctermbg=1 guibg=1
match ExtraWhitespace /\s\+$/

" Automatically remove all trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" jump to last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'

" Coc Config
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif
