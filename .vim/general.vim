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

" Setup autocompletion for all java files
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" To enable smart (trying to guess import option) inserting class imports with F4, add:
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

" To enable usual (will ask for import option) inserting class imports with F5, add:
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

" To add all missing imports with F6:
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

" To remove all missing imports with F7:
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
