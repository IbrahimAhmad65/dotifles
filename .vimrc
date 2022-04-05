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
