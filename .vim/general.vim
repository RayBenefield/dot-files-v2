" Hides buffers when switched away rather than closing them to keep undo history
set hidden

" Sets a unified shared clipboard between yank and system
set clipboard=unnamed

" Sets the leader character to `\`
let mapleader = "\\"

" Easier escape in insert mode
inoremap jk <esc>

" Refresh source with F5
nnoremap <F5> :source $MYVIMRC<CR>:e<CR>

" Easier Save
nnoremap <C-W> :w<CR>

" Automatically re-source vimrc when a *.vim file is saved
augroup filetype_vim
    autocmd!
    autocmd BufWritePost *.vim :source $MYVIMRC
augroup END

" Set folder that UltiSnips snippets are kept in
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
