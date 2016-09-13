" Easier escape in insert mode
inoremap jk <esc>

" Sets the leader character to `\`
let mapleader = ";"

" Easier Save
nnoremap <C-S> :w<CR>

" Indent file without moving cursor
nnoremap g= gg=G``

" Better visual indentations
vnoremap > >gv
vnoremap < <gv

nnoremap å <C-a>
nnoremap ≈ <C-x>

" Set folder that UltiSnips snippets are kept in
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Setup autocompletion for all java files
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" CamelCasing movements
" normal mode
nmap <silent> w <Plug>CamelCaseMotion_w
nmap <silent> b <Plug>CamelCaseMotion_b
nmap <silent> e <Plug>CamelCaseMotion_e
" visual mode
xmap <silent> w <Plug>CamelCaseMotion_w
xmap <silent> b <Plug>CamelCaseMotion_b
xmap <silent> e <Plug>CamelCaseMotion_e
" text-objects
omap <silent> aw <Plug>CamelCaseMotion_iw
xmap <silent> aw <Plug>CamelCaseMotion_iw
omap <silent> iw <Plug>CamelCaseMotion_ie
xmap <silent> iw <Plug>CamelCaseMotion_ie
" operator pending mode
omap <silent> w <Plug>CamelCaseMotion_w
omap <silent> b <Plug>CamelCaseMotion_b
omap <silent> e <Plug>CamelCaseMotion_e[20~
