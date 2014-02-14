if !exists("g:tex_command")
    let g:tex_command = "pdflatex"
endif

function! TexCompile()
    execute ":w"
    let logg = system(g:tex_command . " " . bufname("%"))
    
    let bnum = bufwinnr("__tex_log__")
    
    if bnum != -1
        execute bnum . "wincmd w"
    else
        belowright 10split __tex_log__
    endif
    normal! ggdG
    setlocal filetype=texlog
    setlocal buftype=nofile

    call append(0, split(logg, '\v\n'))
endfunction

nnoremap <buffer> <localleader>0 :call TexCompile()<cr>
