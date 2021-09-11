set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-user'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-repeat'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'adelarsq/vim-matchit'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-obsession'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
color desert
set fileencodings=utf-8,gbk,gbk2312
set termencoding=utf-8
set encoding=utf-8
set nu
set sw=4
set ts=4
set expandtab       "transfer tab into blank
set autoindent
set hidden          "keep file unstored when jumping files
set showcmd         "If the 'showcmd' option is on,the (partially) entered 
                    "count is shown at the bottom of the window.
set mouse=a                    
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" replace eol with $ and trailing space with . while set list is true
set listchars:eol:$,trail:.

" :&& first & means :s[ubstitude] command, second & means [flag] used last 
" :s[ubstitude] command
nnoremap & :&&<CR>  
xnoremap & :&&<CR>
command W wa
command Q qa
command WQ wa|qa

set textwidth=80
" paint special column special color
set colorcolumn=81
highlight ColorColumn ctermbg=1 guibg=lightgrey

filetype plugin on


" when paste is set, pasting text from out-vim to vim in original style
set pastetoggle=<f5>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Filetype Plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.c 0r ~/.vim/skeleton/slt.c

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           lightline.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2

let g:lightline={
    \'colorscheme':'wombat',
    \}

if !has('gui_running')
  set t_Co=256
endif

set noshowmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           repeat
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim
nnoremap <leader>n nzz
nnoremap <leader>N Nzz

" YCM
nnoremap <leader>f :YcmCompleter Format<CR>
nnoremap <leader>d :YcmCompleter GoToDefinition<CR> 
nnoremap <leader>p :YcmCompleter GoToDeclaration<CR> 
nnoremap <leader>F :YcmCompleter FixIt<CR> 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           YCM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight Pmenu ctermbg=207 ctermfg=black guibg=gray



let g:ycm_global_ycm_extra_conf ='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Vim-matchit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
packadd! matchit
let b:match_words = 'if:else'

