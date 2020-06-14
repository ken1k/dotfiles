let g:plug_timeout=300
call plug#begin()
Plug 'lifepillar/vim-solarized8'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
call plug#end()

set termguicolors
set background=dark
colorscheme solarized8


set tabstop=4


inoremap <silent> jj  <ESC>:w<CR>
nnoremap <silent> qq  :q<CR>
