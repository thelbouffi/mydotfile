" ===================== General ===================
set nocompatible              " be iMproved, required
filetype off                  " required for Vundle (disable file type detection)


" ===================== Plugins  ==================

set rtp+=~/.vim/bundle/Vundle.vim  " where Vundle should install plugins
call vundle#begin()

" General plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree' 
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'benmills/vimux'
Plugin 'digitaltoad/vim-pug'
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'

" RE Plugins
" Plugin 'vim-scripts/python.vim--Vasiliev'
" Plugin 'vim-scripts/django.vim'
" Plugin 'tpope/vim-markdown'
" Plugin 'Shougo/neocomplcache'
" Plugin 'Raimondi/delimitMate'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'vim-scripts/matchit.zip'
" Plugin 'fatih/vim-go'
" Plugin 'wavded/vim-stylus'
" Plugin 'mattn/emmet-vim'
" Plugin 'moll/vim-node'
" Plugin 'othree/html5.vim'
" Plugin 'honza/vim-snippets'

" Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode

" Plugin 'jelera/vim-javascript-syntax'

call vundle#end()            " required
filetype plugin indent on    " required

" ====================== Settings ==================

" Genral Settings
set mouse=a	                       "enable mouse clicking
set number                             " Line numbers are good.
set history=1000                       " Store lots of :cmdline history.
set showcmd                           " Show incomplete cmds down the bottom.
set showmode                          " Show current mode down the bottom.
set hidden                            " Allow buffers to exist in the background.
set autoread                          " Reload files changed outside vim
syntax on                             " Enable syntax highlighting.
set clipboard=unnamedplus

" Swap Files
set noswapfile                  " Don't use a swapfile for buffers.

" Color Solarized Config
syntax enable
set background=dark

" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']

" Indent Guide Lines Settings
set tabstop=2
set shiftwidth=0
set expandtab
colorscheme default
set background=dark
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=1
let g:indent_guides_guide_size = 1
hi IndentGuidesOdd  ctermbg=darkgrey
hi IndentGuidesEven ctermbg=darkgrey

" Vimux Settings
" Prompt for a command to run
map rp :PromptVimTmuxCommand

" Run last command executed by RunVimTmuxCommand
map rl :RunLastVimTmuxCommand

" Inspect runner pane
map ri :InspectVimTmuxRunner

" Close all other tmux panes in current window
map rx :CloseVimTmuxPanes

" Interrupt any command running in the runner pane
map rs :InterruptVimTmuxRunner

" ====================== Help ========================
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
