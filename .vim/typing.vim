" Set backspace to work properly
set backspace=indent,eol,start

" Easier escape in insert mode
inoremap jk <ESC>
vnoremap JK <ESC>

" Sets the leader character to `\`
let mapleader = ";"

" Easier Save
nnoremap <C-S> :w<CR>

" Indent file without moving cursor
nnoremap g= gg=G``

" Move up a line even through word wrap
nnoremap j gj
nnoremap k gk

" Better visual indentations
vnoremap > >gv
vnoremap < <gv

" Select most recently pasted text
nnoremap gp `[v`]

nnoremap å <C-a>
nnoremap ≈ <C-x>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let @a = 'gaip1|gaip2|gaip3|gaip4|gaip5|gaip6|gaip7|gaip8|gaip9|'

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

nmap [l <Plug>unimpairedMoveUp
nmap ]l <Plug>unimpairedMoveDown
xmap [l <Plug>unimpairedMoveSelectionUp
xmap ]l <Plug>unimpairedMoveSelectionDown
