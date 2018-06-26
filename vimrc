set nocompatible
set backspace=indent,eol,start
set smartindent
filetype plugin indent on
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type':'opt'})
call minpac#add('qpkorr/vim-renamer', {'type':'opt'})
call minpac#add('tpope/vim-surround')
call minpac#add('vim-airline/vim-airline')
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()


set number
syntax enable

set background=dark

" Display all matching files when we tab complete
set wildmenu

" Make sure that unsaved buffers that are to be put in the background are
" allowed to go in there(ie. the "must save first" error don't come up)
set hidden

let mapleader="," 
nnoremap <c-e> ,
vnoremap <c-e> ,

" Expand the directory of the current file anywhere.
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

set ignorecase
set smartcase

set foldmethod=indent
set foldlevel=99
nnoremap <space> za
" use zo and zc to fold and unfold in normal mode
" use zR and zM to fold and unfold all folds

set shiftwidth=4
set tabstop=4
" Turn tabs into spaces
set expandtab

" Set visual bell -- I hate that damned beeping
" set vb

" FuzzyFinder Settings
nmap ,fb :FuzzyFinderBuffer<CR>
nmap ,ff :FuzzyFinderFile<CR>
nmap ,ft :FuzzyFinderTag<CR>

set virtualedit=all

" set nowrap

" nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

iabbrev @@ yzwdroid@gmail.com

inoremap jk <esc>
" inoremap <esc> <nop>

"Xshell color airline
 set t_Co=256
