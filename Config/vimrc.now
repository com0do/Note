

"--------------------------------------------------------------

" from 韦神-------------------------------------------------
so ~/.vim/vim-init/init.vim

" end 韦神-------------------------------------------------

set expandtab
set noautochdir
set guifont=Monospace\ 16

call quickmenu#reset()
call quickmenu#append('# Start', '')
call quickmenu#append('test1', 'echo 1', 'help 1')
call quickmenu#append('test2', 'echo 2', 'help 2')
call quickmenu#append('# Misc', '')
call quickmenu#append('test3', 'echo 3')
call quickmenu#append('test4', 'echo 4')
call quickmenu#append("test5\nasdfafffff\njkjkj", 'echo 5')
call quickmenu#append('text1', '')
call quickmenu#append('text2', '')
nnoremap <F12> :call quickmenu#toggle(0)<cr>
" imap <expr> <F11> quickmenu#bottom(0)



command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
set wrap

"split,vsplit,only
function! Zoom ()
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
        let l:cur_winview = winsaveview()
        let l:cur_bufname = bufname('')
        tabclose

        " restore the view
		if l:cur_bufname == bufname('')
            call winrestview(cur_winview)
        endif
    else
        tab split
    endif
endfunction
nmap <leader>z :call Zoom()<CR>
