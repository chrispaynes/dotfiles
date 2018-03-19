set background=dark
syntax enable

" Spaces And Tabs
set expandtab
set tabstop=2
set shiftwidth=2
retab

" UI Config
set cursorline
set cursorcolumn
set relativenumber

" Custom Movements
nnoremap B ^
nnoremap E $

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

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'hashivim/vim-terraform'

Plugin 'fatih/vim-go'

Plugin 'elixir-editors/vim-elixir'

Plugin 'godlygeek/tabular'

Plugin 'plasticboy/vim-markdown'

Plugin 'scrooloose/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <C-b> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeWinSize=75
let NERDTreeShowLineNumbers=1

Plugin 'lokaltog/vim-distinguished'
colorscheme distinguished

Plugin 'sjl/badwolf'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'itchyny/lightline.vim'

Plugin 'airblade/vim-gitgutter'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'w0rp/ale'

Plugin 'junegunn/fzf'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set shell=zsh
:highlight Normal ctermfg=grey ctermbg=none
