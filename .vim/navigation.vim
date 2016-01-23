" Keeps some chars next to the windows edge while following unwrapped lines
set sidescrolloff=10

" Keeps some lines above/below the cursor as you vertically scroll
set scrolloff=5

" Handle bufferes - Next, Previous, Close
nnoremap gt :bn<CR>
nnoremap gT :bp<CR>
nnoremap <C-X> :bw<CR>

" Easier Split Navigation
nnoremap <C-J> <C-W><C-J>  " Down
nnoremap <C-K> <C-W><C-K>  " Up
nnoremap <C-L> <C-W><C-L>  " Right
nnoremap <C-H> <C-W><C-H>  " Left
nnoremap <C-\> :vsplit<CR> " Vertical
nnoremap <C-_> :split<CR>  " Horizontal
