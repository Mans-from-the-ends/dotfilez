call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'airblade/vim-gitgutter'
call plug#end()

filetype plugin indent on
syntax on

" always show the status bar
set laststatus=2

" enable 256 colors
set t_Co=256
set t_ut=
set cursorline

" turn on line numbering
set number


" color scheme
syntax on
colorscheme nord
filetype on
filetype plugin indent on

" Lightline
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
" copy, cut and paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa