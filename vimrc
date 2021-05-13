call plug#begin()

"Rust and lsp

Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
"Themes
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
"GotGit
Plug 'airblade/vim-gitgutter'
call plug#end()

filetype plugin indent on
syntax on

"Rust
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }
" Required, explicitly enable Elixir LS
let g:ale_linters = {
\  'rust': ['analyzer'],
\}

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
