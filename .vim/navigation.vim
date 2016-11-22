" Ignores the casing when searching
set smartcase

" Set relative numbering for better navigation
set relativenumber

" Keeps some chars next to the windows edge while following unwrapped lines
set sidescrolloff=10

" Keeps some lines above/below the cursor as you vertically scroll
set scrolloff=5

" More logical navigation between hunks with OPT+`j`/`k` instead of `c`
nmap ∆ <Plug>GitGutterNextHunk
nmap ˚ <Plug>GitGutterPrevHunk

" Handle bufferes - Next, Previous, Close
nnoremap gt :bn<CR>
nnoremap gT :bp<CR>
nnoremap <C-W> :BW<CR>

" Easier Split Navigation
nnoremap <C-J> <C-W><C-J>  " Down
nnoremap <C-K> <C-W><C-K>  " Up
nnoremap <C-L> <C-W><C-L>  " Right
nnoremap <C-H> <C-W><C-H>  " Left

nnoremap <UP> <C-U>
nnoremap <DOWN> <C-D>

" TODO Temporary workaround for iTerm/Mac OS X/NeoVim bug
" https://github.com/neovim/neovim/issues/2048
if has('nvim')
    nnoremap <BS> <C-W><C-H>
endif

nnoremap <C-\> :vsplit<CR>:b#<CR> " Vertical
nnoremap <C-_> :split<CR>:b#<CR>  " Horizontal

" Switch [l and ]l with [e ]e
nmap [e <Plug>unimpairedLPrevious
nmap ]e <Plug>unimpairedLNext
nmap [E <Plug>unimpairedLFirst
nmap ]E <Plug>unimpairedLLast

nnoremap <LEADER>f :NERDTreeFind<CR>

" Changed mapping to execute CTRL-P
let g:ctrlp_map = '<LEADER>p'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|dist)$'

" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects
    ".gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    "ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
