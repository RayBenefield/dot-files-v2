" Hides buffers when switched away rather than closing them to keep undo history
set hidden

" Sets a unified shared clipboard between yank and system
set clipboard=unnamed

" Turn off swap files
set noswapfile

" Refresh source with F5
nnoremap <F5> :source $MYVIMRC<CR>:e<CR>

" Automatically re-source vimrc when a *.vim file is saved
augroup filetype_vim
    autocmd!
    autocmd BufWritePost *.vim :source $MYVIMRC
augroup END
