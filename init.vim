source ~/.config/nvim/plugins.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/coc-mappings.vim

" config
syntax on
filetype plugin indent on
set autoread
set hidden
set noswapfile
set nobackup
set number
set nowritebackup
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set shortmess+=c
set updatetime=300
set inccommand=split
set splitbelow
set cursorline
set cursorcolumn
set fileformats=unix,dos,mac
set encoding=UTF-8
set showcmd
set cmdheight=2
set noshowmode
set hlsearch
set sidescroll=6
set confirm
set autowriteall
set list!
set lazyredraw
set mouse=a
set undofile
set clipboard+="unnamedplus"
set conceallevel=0
set scrolloff=8
set ignorecase
set smartcase
set timeoutlen=1000
set numberwidth=4
set nowrap
set signcolumn=yes

" Theme (gruvbox)
color gruvbox
let g:gruvbox_contrast_dark='hard'
autocmd vimenter * ++nested colorscheme gruvbox
autocmd VimEnter * hi Normal ctermbg=none

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
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Coc Config
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1

autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" utilsnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
