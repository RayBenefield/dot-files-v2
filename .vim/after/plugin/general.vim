" Hides buffers when switched away rather than closing them to keep undo history
set hidden

" Easier escape in insert mode
inoremap jk <esc>

" Refresh source with F5
nnoremap <F5> :source $MYVIMRC<CR>:e<CR>

" Easier Save
nnoremap <C-W> :w<CR>
