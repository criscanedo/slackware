" Basic
syntax enable
filetype plugin indent on
set nocompatible
set number
set shiftwidth=4
set tabstop=4
set noexpandtab
set cindent
set autoindent
set smartindent
set smarttab
set backspace=eol,start,indent
set cinoptions=g-1
set background=dark
set hidden
set path+=$HOME/,**
set wildmenu
set wildmode=list:full
set wildcharm=<C-z>
set wildignorecase
set wildignore=*.swp,*.bak,*.out
set wildignore+=*/.git
set wildignore+=tags
set nobackup
set nowritebackup
set noundofile

" Custom commands
command! MakeTags !ctags -R .

" Custom key-bindings
let mapleader=","
nnoremap <leader>f :find <C-R>=expand('%:h').'/*'<CR>
nnoremap <leader>s :sfind <C-R>=expand('%:h').'/*'<CR>
nnoremap <leader>v :vert sfind <C-R>=expand('%:h').'/*'<CR>
nnoremap <leader>F :find *
nnoremap <leader>S :sfind *
nnoremap <leader>V :vert sfind *
nnoremap <leader>b :buffer <C-z><S-Tab>
nnoremap <leader>B :sbuffer <C-z><S-Tab>
nnoremap <leader>t :tjump /
nnoremap gb :ls<CR>:b<Space>
nnoremap <leader>head :-1read $HOME/.vim/snippets/default.h<CR>:%s/DEFAULT//g<Left><Left>
nnoremap <leader>printf :-1read $HOME/.vim/snippets/printf.h<CR>==t"la
nnoremap <leader>main :-1read $HOME/.vim/snippets/main.c<CR>3jo

" File browsing
let g:netrw_banner=0        " disable banner
"let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
"let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

" Windows
augroup ReduceNoise
    autocmd!
    " automatically resize active split to 85 width
    autocmd WinEnter * :call ResizeSplits()
augroup end

function! ResizeSplits()
    set winwidth=85
    wincmd =
endfunction

" ***** Plugins *****
" Auto install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install vim-plug if not found
" if empty(glob('~/.vim/autoload/plug.vim'))
"     silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
" ***** Plugins *****
