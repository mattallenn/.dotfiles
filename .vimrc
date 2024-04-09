" ---------vim-plug section-------------

call plug#begin()
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Colorscheme
"Plug 'sainnhe/gruvbox-material', { 'as': 'gruvbox' }
Plug 'dracula/vim', { 'as': 'dracula' }

" Vim-Sneak (crazy fast motions)
Plug 'justinmk/vim-sneak'

"Syntatic - syntax checking
Plug 'scrooloose/syntastic'

" Commentary - comment out code
Plug 'tpope/vim-commentary'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

set relativenumber

" Display current line and column on the bottom bar
set ruler

" Set tabs to be 2 spaces wide
set tabstop=2
set shiftwidth=2

" Automatically indent code when going to the next line
set autoindent

" Expand tab characters to be spaces.
set expandtab

" start search without having to submit
set incsearch

" allow mouse for pasting etc
set mouse=a

"Keep 7 lines visible at the top and bottom of the screen when scrolling
set so=7

" -------------- REMAPS ------------------
" use n and N to center the next search result on the screen
nmap n nzz
nmap N Nzz
" use <leader>pv to open netrc file explorer
let mapleader = " "
nnoremap <leader>pv :Ex<CR>

" NERD-TREE
nnoremap <C-t> :NERDTreeToggle<CR>

" FZF
nnoremap <leader>ff :Files<CR>
nnoremap <leader>bl :Lines<CR>
nnoremap <leader>cl :BLines<CR>

" ---------------------------------------

" show whitespace

" Flash on the screen instead of making the bell sound
set noerrorbells
set visualbell

filetype on 
syntax on

" Coloroscheme
colorscheme dracula
hi  Normal guibg=NONE ctermbg=NONE


" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
