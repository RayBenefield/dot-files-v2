" Ignores the casing when searching
set smartcase

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
nnoremap <C-X> :bw<CR>

" Easier Split Navigation
nnoremap <C-J> <C-W><C-J>  " Down
nnoremap <C-K> <C-W><C-K>  " Up
nnoremap <C-L> <C-W><C-L>  " Right
nnoremap <C-H> <C-W><C-H>  " Left
nnoremap <C-\> :vsplit<CR>:b#<CR> " Vertical
nnoremap <C-_> :split<CR>:b#<CR>  " Horizontal
