augroup MyAutoCmd " {{{

    " Hight current line only on focused window
    autocmd WinEnter,InsertLeave * set cursorline
    autocmd WinLeave,InsertEnter * set nocursorline

    " more eager than 'autoread'
    autocmd WinEnter,FocusGained * checktime

    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

    autocmd VimEnter * call dein#call_hook('post_source')

    autocmd FileType javascript setlocal foldmethod=syntax

    " 微信小程序
    autocmd BufRead,BufNewFile *.wxml set filetype=html
    autocmd BufRead,BufNewFile *.wxss set filetype=css

augroup END " }}}
