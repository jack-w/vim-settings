nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>
nnoremap <leader>gn :cnext<cr>
nnoremap <leader>gr :cprevious<cr>

function! s:GrepOperator(type)
    let save_unnamed_register = @@

    if a:type ==# 'v'
        execute "normal! `<v`>y"
    elseif a:type ==# 'char'
        execute "normal! `[v`]y"
    else
        return
    endif

    silent execute "grep! -R " . shellescape(@@) . " ."
    let g:quickfix_return_to_window = winnr()
    copen
    redraw!
    let g:quickfix_is_open=1

    let @@ = save_unnamed_register
endfunction

