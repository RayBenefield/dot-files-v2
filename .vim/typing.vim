" Easier escape in insert mode
inoremap jk <esc>

" Sets the leader character to `\`
let mapleader = ";"

" Easier Save
nnoremap <C-W> :w<CR>

" Indent file without moving cursor
nnoremap g= gg=G``

" Set folder that UltiSnips snippets are kept in
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Setup autocompletion for all java files
autocmd FileType java setlocal omnifunc=javacomplete#Complete
