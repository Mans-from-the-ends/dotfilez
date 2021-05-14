<<<<<<< HEAD
let g:ale_disable_lsp = 1
=======
syntax enable
filetype plugin indent on

autocmd BufNewFile,BufRead *.rs set filetype=rust

>>>>>>> 290d09286b18acbb3713167b3078727ce2ee3fef
call plug#begin()

"Rust
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
"Themes
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
"GotGit
Plug 'airblade/vim-gitgutter'
call plug#end()


"Rust
<<<<<<< HEAD
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'
=======

let g:ale_linters = {
\  'rust': ['analyzer'],
\}
>>>>>>> 290d09286b18acbb3713167b3078727ce2ee3fef

let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" Optional, configure as-you-type completions
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>



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
