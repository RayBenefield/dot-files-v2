if &compatible
  set nocompatible
endif
set runtimepath^=~/.vim/bundle/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/bundle'))

" Let Dein manage itself
" Required:
call dein#add('Shougo/dein.vim')


" --------------------------------------------------
" General
" --------------------------------------------------

" Enables Git features directly in Vim
call dein#add("tpope/vim-fugitive")

" Simplified clipboard management for Vim
call dein#add("svermeulen/vim-easyclip")

" Add repeatability with some plugins like surround
call dein#add("tpope/vim-repeat")

" Snippet functionality
call dein#add("sirver/ultisnips")

" Add surround action to Vim functionality
call dein#add("tpope/vim-surround")

" Java features like autocomplete
call dein#add('artur-shaik/vim-javacomplete2')

" Add commenting features
call dein#add('scrooloose/nerdcommenter')

" Add Sublime Multi-cursor support for Vim
call dein#add('terryma/vim-multiple-cursors')

" Useful pair-like features that utilize square brackets []
call dein#add('tpope/vim-unimpaired')

" Useful pair-like features that utilize square brackets []
call dein#add('scrooloose/syntastic')


" --------------------------------------------------
" Interface
" --------------------------------------------------

" Shows a git diff in the gutter (sign column), allows staging/reverting/navigating of hunks
call dein#add('airblade/vim-gitgutter')

" File explorer shelf for Vim
call dein#add('scrooloose/nerdtree')

" Special interface for more focused writing
call dein#add('mikewest/vimroom')

" Statusline with Powerline font
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

" Special JSON handling
call dein#add('elzr/vim-json')

" Show indentation guids
call dein#add('Yggdroot/indentLine')


" --------------------------------------------------
" Navigation
" --------------------------------------------------

" Added fuzzy file search capabilities
call dein#add("kien/ctrlp.vim")

" Added fuzzy file search capabilities
call dein#add("qpkorr/vim-bufkill")


" --------------------------------------------------
" Typing
" --------------------------------------------------

" Add repeatability with some plugins like surround
call dein#add("tpope/vim-repeat")

" Snippet functionality
call dein#add("sirver/ultisnips")

" Add surround action to Vim functionality
call dein#add("tpope/vim-surround")

" Java features like autocomplete
call dein#add('artur-shaik/vim-javacomplete2')

" Add commenting features
call dein#add('scrooloose/nerdcommenter')

" Add Sublime Multi-cursor support for Vim
call dein#add('terryma/vim-multiple-cursors')

" Adds the ability to word jump by CamelCasing
call dein#add('bkad/CamelCaseMotion')

" Adds case changing, better autocorrect, and search fanciness
call dein#add('tpope/vim-abolish')

" --------------------------------------------------


" Required:
call dein#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
if dein#check_install()
  call dein#install()
endif
