" Enables syntax highlighting
syntax enable

" A dark grey for highlighting; rgb=38,38,38
highlight Visual cterm=NONE ctermbg=235 ctermfg=NONE guibg=Grey15

" Set the cursor to a vertical line in insert mode and a solid block in command mode
let &t_SI = "\<Esc>P\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>P\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Show the current line numbers
set number

" Show uncomplete commands in the bottom right
set showcmd

" Don't wrap long lines (soft wrap)
set nowrap

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

" vim-json settings
let g:vim_json_syntax_conceal = 0

" Show leading whitespace that includes spaces, and trailing whitespace.
highlight ExtraWhitespace ctermbg=white guibg=white
augroup HighlightWhiteSpace
    autocmd!
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
augroup END

" Remove trailing whitespace
nnoremap <Leader>ws :%s/\s\+$//e<CR>``

" Turn off search highlighting
command! H let @/=""

 "Returns true if NERDTree open/active
"function! s:isNTOpen()
    "return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
"endfunction

 "Calls NERDTreeFind if NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
"function! s:syncTree()
    "if &modifiable && s:isNTOpen() && strlen(expand('%')) > 0 && !&diff
        "NERDTreeFind
        "wincmd p
    "endif
"endfunction

 "When Vim is opened then open NERDTree
"augroup SyncWithNerdTree
    "autocmd!

     "When vim is opened, open NERDTree
    "autocmd BufEnter * NERDTreeMirror

     "Whenever a buffer is opened then sync up NERDTree
    "autocmd BufEnter * call s:syncTree()
"augroup END
