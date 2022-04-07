set shell=powershell.exe
set shellcmdflag=-NoProfile\ -NoLogo\ -NonInteractive\ -Command
set shellpipe=|
set shellredir=>
augroup QuickFix
     au FileType qf map <buffer> j j<CR><C-w>w
     au FileType qf map <buffer> k k<CR><C-w>w
augroup END

set laststatus=2
set statusline=%F
set statusline+=%=
set statusline+=%{getcwd()}
set number
set autochdir
set tabstop=4
set autoindent
syntax on
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
set expandtab
set softtabstop=4
set bg=dark
imap <Up> <nop>
imap <Left> <nop>
imap <Down> <nop>
imap <Right> <nop>
map <Up> <nop>
map <Left> <nop>
map <Down> <nop>
map <Right> <nop>
nmap t mz:s/\v^/    <CR>`z4l
nmap ? mz:s/\v\/\//<CR>`z2h
nmap . mz:s/\v^/\/\/<CR>`z2l
noremap <Esc> <nop>
inoremap jk <Esc>
nnoremap ; mqA;<Esc>`q
colorscheme slate
set guifont=Source\ Code\ Pro:h10
set backspace=indent,eol,start
syntax match ConcealedDetails /\v^[^|]*\|[^|]*\| / conceal
setlocal conceallevel=3
setlocal concealcursor=nvic
autocmd ColorScheme * highlight Conceal cterm=bold,underline ctermfg=9 ctermbg=0
command! -nargs=0 Reload so $MYVIMRC
so ./.vim/plugin/search.vim
let g:projDir = 'C:/Users/Tators\ 03/Desktop/code/TransporTator/'
command! -nargs=1 JS :call SearchFuncJava(<args>)
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <C-f> :make<Return>:copen<Return>
noremap <C-d> :cd ~/Desktop/code/TransporTator/<CR>:!~/Desktop/code/TransporTator/build.bat<Return>
noremap <C-h> :vert new<CR>:cd ~/Desktop/code/TransporTator/<CR>:0read !~/Desktop/code/TransporTator/deploy.bat<Return>
"noremap <C-d> :vert new<CR>:cd ~/Desktop/code/TransporTator/<CR>:0read !~/Desktop/code/TransporTator/build.bat<Return>"
"noremap <C-h> :vert new<CR>:cd ~/Desktop/code/TransporTator/<CR>:0read !~/Desktop/code/TransporTator/deploy.bat<Return>"
