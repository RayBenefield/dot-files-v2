" Hides buffers when switched away rather than closing them to keep undo history
set hidden

" Sets a unified shared clipboard between yank and system
set clipboard=unnamed

" Run the shell as if it was the home shell
set shellcmdflag=-ic
set shell=/bin/bash

" Turn off swap files
set noswapfile

" Refresh source with F5
nnoremap <F5> :source $MYVIMRC<CR>:e<CR>

" Automatically re-source vimrc when a *.vim file is saved
augroup filetype_vim
    autocmd!
    autocmd BufWritePost *.vim :source $MYVIMRC
augroup END

" Automatically re-source vimrc when a *.vim file is saved
augroup filetype_markdown
    autocmd!
    autocmd BufWritePost *.md :set conceallevel=0
augroup END

" Automatically re-source vimrc when a *.vim file is saved
augroup filetype_haloscript
    autocmd!
    autocmd BufRead *.hs* :set ft=markdown
augroup END
