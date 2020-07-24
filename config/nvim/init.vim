let g:plug_timeout=300
call plug#begin()
Plug 'lifepillar/vim-solarized8'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'dense-analysis/ale'
call plug#end()

set termguicolors
set background=dark
colorscheme solarized8

" ale
let g:ale_sign_error='\uf05e'
let g:ale_sign_warning=''

" airline
let g:airline_theme='powerlineish'
let g:airline_section_b=' %t%m '
let g:airline_section_c=''
let g:airline_section_x=''
let g:airline_section_y=' L/N:%l '
let g:airline_section_z='%{strftime(" %-I:%M %p %a ")}'
let g:airline_section_error=''
let g:airline_section_warning=''

" ctrlp
let g:ctrlp_use_caching=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_match_window='bottom,order:btt,min:1,max:10,results:10'
let g:ctrlp_lazy_update=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|svn)$',
  \ 'file': '\v\.(so|o)$',
  \ 'link': 'some_bad_symbolic_links',
\ }
let g:ctrlp_buffer_func={'enter': 'BrightHighlightOn', 'exit': 'BrightHighlightOff'}
function BrightHighlightOn()
	hi CursorLine ctermfg=Black ctermbg=DarkGreen
endfunction
function BrightHighlightOff()
	hi CursorLine ctermfg=None ctermbg=0
endfunction


syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set backspace=2
set incsearch
set ignorecase
set smartcase
set hlsearch
set splitright
set matchtime=3
set backspace=indent,eol,start
set listchars=tab:\|\

let mapleader="\<Space>"

inoremap <silent> jj  <ESC>:<C-u>w<CR>
nnoremap          qq  :<C-u>q<CR>
nnoremap <TAB>        <C-w>w

nnoremap <Leader>f    :CtrlP<CR>
nnoremap <Leader>b    :CtrlPBuffer<CR>
nnoremap <Leader>r    :CtrlPMRU<CR>

nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprevious<CR>

hi NonText     cterm=None ctermfg=None gui=None guifg=#435156
hi DiffAdd     ctermfg=Black ctermbg=DarkGreen
hi DiffChange  ctermfg=Black ctermbg=DarkYellow
hi DiffDelete  ctermfg=Black ctermbg=DarkCyan
hi DiffText    ctermfg=Black ctermbg=LightGray




