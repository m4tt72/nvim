" if platform is windows
if has('win32')
  source ~/AppData/Local/nvim/plugins.vim
  source ~/AppData/Local/nvim/mappings.vim
  source ~/AppData/Local/nvim/coc-mappings.vim
else
  source ~/.config/nvim/plugins.vim
  source ~/.config/nvim/mappings.vim
  source ~/.config/nvim/coc-mappings.vim
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
set updatetime=300
set gdefault
set inccommand=split
set splitbelow
set cursorline
set cursorcolumn
set timeoutlen=1000 ttimeoutlen=0
set fileformats=unix,dos,mac
set encoding=UTF-8
set showcmd
set cmdheight=1
set noshowmode
set hlsearch
set sidescroll=6
set confirm
set autowriteall
set t_Co=256
set list!

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Theme (gruvbox)
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

" utilsnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" sessions management
function! MakeSession()
  let b:sessiondir = stdpath('data') . '/sessions' . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:filename = b:sessiondir . '/session.vim'
  exe "mksession! " . b:filename
endfunction

function! LoadSession()
  let b:sessiondir = stdpath('data') . '/sessions' . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction

" Adding automatons for when entering or leaving Vim
au VimEnter * nested :call LoadSession()
au VimLeave * :call MakeSession()
