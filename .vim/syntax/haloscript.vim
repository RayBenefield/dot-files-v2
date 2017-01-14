" Vim syntax file
" Language: Halo Script
" Maintainer: Ray Benefield
" Latest Revision: 8 Sept 2016

if exists("b:current_syntax")
    finish
endif

syn match Action '^||.*|'
syn match Variable '\*\*[^\*\*]*\*\*'
syn match Keyword '`[^`]*`'
syn match Stuff '|| `[^`]*`'

hi Variable ctermfg=1
hi Keyword ctermfg=2
hi Stuff ctermfg=2
hi Comment ctermfg=8
