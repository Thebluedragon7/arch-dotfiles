set number
set mouse=a
set expandtab
set tabstop=4
set shiftwidth=4
syntax enable

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

call plug#begin()

" Plug 'preservim/nerdtree'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

call plug#end()

let g:nvim_tree_auto_open = 1

nnoremap <F3> :NvimTreeToggle<CR>