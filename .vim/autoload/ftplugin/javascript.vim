function! ftplugin#javascript#OpenSrcAndTest()
    let filename = expand('%:p')
    let targetTest = substitute(filename, '\/test\/', '\/lib\/', '')
    let targetSrc = substitute(filename, '\/lib\/', '\/test\/', '')
    execute "vsplit"
    wincmd h
    execute "edit " . targetTest
    wincmd l
    execute "edit " . targetSrc

    if (match(filename, '\/lib\/') > 0)
        wincmd h
    endif
endfunction
