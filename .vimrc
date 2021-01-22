" Colemak remapping for the movement keys
:nnoremap n j
:nnoremap e k
:nnoremap i l
:nnoremap j e
:nnoremap k n
:nnoremap l i

" Remap for the <Esc> key
imap jj <Esc>


" Add an underline on the current line 
:autocmd InsertEnter,InsertLeave * set cul!

" Change cursor when entering insert mode
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" avoid mistyping commands
command! W w
command! Wq wq
command! Bd bd
