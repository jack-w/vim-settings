"general stuff {{{
call pathogen#infect()
syntax on
filetype plugin indent on
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set mouse=a
set ruler
set rulerformat=%-(%l/%L%)%=\ %P
set showmatch
"}}}

"general abbreviations {{{
iabbrev myemail jacob.wellnhofer@physik.uni-r.de
"}}}

" GUI options {{{
set guioptions-=m
set guioptions-=T
set guioptions-=r
"}}}

" don't expand tabs in makefile{{{
augroup ft_make
    autocmd!
    autocmd filetype make setl noexpandtab
augroup END
"}}}

" vimscript file settings -----------{{{
augroup ft_vim
    autocmd!
    autocmd filetype vim setlocal foldmethod=marker
    autocmd filetype vim setlocal foldlevelstart=0
augroup END
" }}}

"general mappings {{{
let mapleader = "-"
let maplocalleader = "@"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>el :source $MYVIMRC<cr>
nnoremap <leader>d <esc>ddp
nnoremap <leader>u <esc>ddkP

nnoremap <leader>bu :execute "rightbelow split " . bufname("#") <cr>

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
vnoremap <leader>" <esc>a"<esc>hbi"<esc>lel
"}}}

"filetype mappings {{{
augroup commen
    autocmd filetype python nnoremap <buffer> <localleader>c I#<esc>
    autocmd filetype sh nnoremap <buffer> <localleader>c I#<esc>
    autocmd filetype c nnoremap <buffer> <localleader>c 0i//<esc>
augroup END

augroup ft_html
    autocmd!
    autocmd filetype html nnoremap <buffer> <localleader>f Vatzf
augroup END

augroup ft_markdown
    autocmd!
    autocmd filetype markdown onoremap <buffer> ih :<c-u>execute "normal! ?^[=-][=-]\\+$\r:nohlsearch\rkvg_"<cr>
augroup END
"}}}



