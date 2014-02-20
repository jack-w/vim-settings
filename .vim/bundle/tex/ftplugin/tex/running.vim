if !exists("g:tex_command")
    let g:tex_command = "pdflatex"
endif

function! TexCompile()
    execute ":w"
    let l:texfile = bufname("%")
    let logg = system(g:tex_command . " " . l:texfile)
    
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
    call system('evince ' . substitute(l:texfile,".tex",".pdf","") . "&")
endfunction

nnoremap <buffer> <localleader><space> :call TexCompile()<cr>
