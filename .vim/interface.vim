" Enables syntax highlighting
syntax enable

" A dark grey for highlighting; rgb=38,38,38
highlight Visual cterm=NONE ctermbg=235 ctermfg=NONE guibg=Grey15

" Set the cursor to a vertical line in insert mode and a solid block in command mode
let &t_SI = "\<Esc>P\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>P\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Show uncomplete commands in the bottom right
set showcmd

" Don't wrap long lines (soft wrap)
set nowrap

" Adds numbers to the side
set number

" Incrementally highlights the results of a search
set incsearch

" Disable backup files
set nobackup

" Set a designated Swap file directory
set directory=~/.vim/swap//

" Enable undo files and set a designated directory
set undodir=~/.vim/undo//

" Always show the status line
set laststatus=2

" Toggle NERDTree
nmap <LEADER>n :NERDTreeToggle<CR>

" Toggle Vimroom
nmap <LEADER>vr <Plug>VimroomToggle

" Airline Status Line settings
let g:airline_theme='dark'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
