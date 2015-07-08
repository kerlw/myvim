set encoding=utf-8
set cul
set ruler
set showcmd
set scrolloff=3
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set hlsearch
set incsearch
set confirm
set nobackup
set noswapfile

filetype on
filetype plugin on


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

" 选中状态下 Ctrl+c 复制
"map <C-v> "*pa
imap <C-v> <Esc>"*pa
imap <C-a> <Esc>^
imap <C-e> <Esc>$
vmap <C-c> "+y
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>

"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

