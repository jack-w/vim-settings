


if exists("g:loaded_typecorr")
    finish
endif
let g:loaded_typecorr = 1

au BufRead,BufNewFile *.tex setlocal filetype=tex

au FileType tex nmap <F9> :w | !cat % <CR>
