function! SearchFuncJava(searchString)
    echo a:searchString 
    execute "vimgrep"  . "/" . a:searchString . "/gj "  . g:projDir . "**/*.java"
    copen
    setlocal conceallevel=3
    setlocal concealcursor-=n
    syntax match ConcealDetails /\v^[^|]*\|[^|]*\| / conceal
    match Title /\v^[^|]*\|[^|]*\| /
endfunction
