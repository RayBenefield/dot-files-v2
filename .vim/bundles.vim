if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/GodlyPerfection/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/GodlyPerfection/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


" --------------------------------------------------
" General
" --------------------------------------------------

" Enables Git features directly in Vim
NeoBundle "tpope/vim-fugitive"

" Simplified clipboard management for Vim
NeoBundle "svermeulen/vim-easyclip"

" Add repeatability with some plugins like surround
NeoBundle "tpope/vim-repeat"

" Snippet functionality
NeoBundle "sirver/ultisnips"

" Add surround action to Vim functionality
NeoBundle "tpope/vim-surround"

" Java features like autocomplete
NeoBundle 'artur-shaik/vim-javacomplete2'

" Add commenting features
NeoBundle 'scrooloose/nerdcommenter'

" Add Sublime Multi-cursor support for Vim
NeoBundle 'terryma/vim-multiple-cursors'

" Useful pair-like features that utilize square brackets []
NeoBundle 'tpope/vim-unimpaired'

" --------------------------------------------------
" Interface
" --------------------------------------------------

" Shows a git diff in the gutter (sign column), allows staging/reverting/navigating of hunks
NeoBundle 'airblade/vim-gitgutter'

" File explorer shelf for Vim
NeoBundle 'scrooloose/nerdtree'

" Special interface for more focused writing
NeoBundle 'mikewest/vimroom'

" Statusline with Powerline font
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

" Special JSON handling
NeoBundle 'elzr/vim-json'

" Show indentation guids
NeoBundle 'Yggdroot/indentLine'

" --------------------------------------------------
" Navigation
" --------------------------------------------------

" Added fuzzy file search capabilities
NeoBundle "kien/ctrlp.vim"

" --------------------------------------------------
" Typing
" --------------------------------------------------

" Add repeatability with some plugins like surround
NeoBundle "tpope/vim-repeat"

" Snippet functionality
NeoBundle "sirver/ultisnips"

" Add surround action to Vim functionality
NeoBundle "tpope/vim-surround"

" Java features like autocomplete
NeoBundle 'artur-shaik/vim-javacomplete2'

" Add commenting features
NeoBundle 'scrooloose/nerdcommenter'

" Add Sublime Multi-cursor support for Vim
NeoBundle 'terryma/vim-multiple-cursors'

" --------------------------------------------------


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
