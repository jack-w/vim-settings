if !exists("g:tex_command")
    let g:tex_command = "pdflatex"
endif

nnoremap <buffer> <localleader><space> :call tex#running#TexCompile()<cr>
