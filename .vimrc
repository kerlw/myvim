set encoding=utf-8

colorscheme lucius 
LuciusBlack 

syntax enable
syntax on

:nmap <silent> <F9> <ESC>:Tlist<RETURN>
" shift tab pages
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
" hex mode switch 十六进制查看方式切换
map <C-H> :call  ToggleHexMod()<CR>
func! ToggleHexMod()
    if !exists("s:hexmode") || s:hexmode == 0
        exec "%!xxd"
        let s:hexmode = 1
    else
        exec "%!xxd -r"
        let s:hexmode = 0
    endif
endfunc

let g:winManagerWindowLayout='FileExplorer'
map <F3> :WMToggle<CR>
imap <F3> <ESC> :WMToggle<CR>
