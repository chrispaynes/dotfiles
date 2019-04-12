set background=dark
syntax enable

" Spaces And Tabs
set expandtab
set tabstop=4
set shiftwidth=4
retab

" UI Config
set cursorline
set cursorcolumn
set relativenumber

" Custom Movements
nnoremap B ^
nnoremap E $

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Disabled Keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

Plugin 'fatih/vim-go'

Plugin 'plasticboy/vim-markdown'

Plugin 'scrooloose/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <C-b> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeWinSize=50
let NERDTreeShowLineNumbers=1

Plugin 'lokaltog/vim-distinguished'
colorscheme distinguished

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'itchyny/lightline.vim'

Plugin 'airblade/vim-gitgutter'

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 0

Plugin 'w0rp/ale'

Plugin 'junegunn/fzf'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set shell=zsh
set noswapfile
set nowrap
highlight clear LineNr
highlight clear SignColumn
