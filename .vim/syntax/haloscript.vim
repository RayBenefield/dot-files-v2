" Vim syntax file
" Language: Halo Script
" Maintainer: Ray Benefield
" Latest Revision: 8 Sept 2016

if exists("b:current_syntax")
    finish
endif

syn match Object '\w.*$'
syn keyword Conditions Respawn Message Destroyed Power Damage
syn match Details ' \[[^\]]*\]'
syn keyword Notes CONFIG nextGroup=Details
syn match Condition '([^)]*)'
syn match Action '<[^>]*>'
syn match Comment '#.*$' contains=Notes
syn match ObjectSetting '- .*$' contains=Condition,Settings,Action
syn match Script '| .*$' contains=Condition,Action
syn match Setting '\[[^\]]*\]'

hi Object ctermfg=2
hi ObjectSetting ctermbg=233
hi Comment ctermfg=8
hi Script ctermbg=233
hi Condition ctermfg=1 ctermbg=233
hi Action ctermfg=5 ctermbg=233
hi Details ctermfg=9
