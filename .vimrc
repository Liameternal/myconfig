" be iMproved, required
set nocompatible              
" required
filetype off                  

" get Vundle installed
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
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
Plugin 'arcticicestudio/nord-vim'
Plugin 'tpope/vim-repeat'
Plugin 'nelstrom/vim-qargs'
" Plugin 'ycm-core/YouCompleteMe'
" Plugin 'rdnetto/YCM-Generator'
Plugin 'adelarsq/vim-matchit'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-obsession'
Plugin 'dracula/vim',{'name':'dracula'}


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
"                           Vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
color desert
set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8
syntax on
" set hls
set hlsearch
" set is
set incsearch 
" set spell

" This option specifies how keyword completion |ins-completion| works
" when CTRL-P or CTRL-N are used.  It is also used for whole-line
" completion |i_CTRL-X_CTRL-L|.  It indicates the type of completion
" and the places to scan.  It is a comma separated list of flags:
" .	scan the current buffer ('wrapscan' is ignored)
" w	scan buffers from other windows
" b	scan other loaded buffers that are in the buffer list
" u	scan the unloaded buffers that are in the buffer list
" k	scan the files given with the 'dictionary' option
" kspell  use the currently active spell checking |spell|
" k{dict}	scan the file {dict}.  Several "k" flags can be given,
"     patterns are valid too.  For example: >
"         :set cpt=k/usr/dict/*,k~/spanish
" s{tsr}	scan the file {tsr}.  Several "s" flags can be given, patterns
"     are valid too.
" i	scan current and included files
" d	scan current and included files for defined name or macro
"     |i_CTRL-X_CTRL-D|
" ]	tag completion
" t	same as "]"
set cpt=.,w,b,u,t,i,k/usr/share/dict/american-english

" for c complement
" ctags -R -f ~/.vim/systags /usr/include /usr/local/include
set tags+=~/.vim/systags

" show a complete list above EX command
set wildmenu
set wildmode=full

" number of screen lines to show around the cursor
set scrolloff=3

" show the line number for each line
set nu

" number of spaces used for each step of (auto)indent
set sw=4

" number of spaces a <Tab> in the text stands for
set ts=4

" Transfer tab into blank
set expandtab       

" automatically set the indent of a new line
set autoindent

" Keep file un-stored when jumping files
set hidden          

" If the 'showcmd' option is on,the (partially) entered 
" Count or pre-command is shown at the bottom of the window.
set showcmd         

" list of flags for using the mouse
" n	Normal mode and Terminal modes
" v	Visual mode
" i	Insert mode
" c	Command-line mode
" h	all previous modes when editing a help file
" a	all previous modes
" r	for |hit-enter| and |more-prompt| prompt
if has('mouse')
    set mouse=a                    
endif

" Replace eol with $ and trailing space with . while set list is true
set listchars:eol:$,tab:<->

" Allow the h command, when used in normal mode, to move the cursor
" to the end of the previsous line, the l command vice versa. 
set whichwrap=h,l

" The 'iskeyword' option specifies which characters can appear in a word,
" the "@" stands for all alphabetic letters, "48-57" stands for ASCII 
" characters 48-57, which are the numbers between 0 to 9, "192-255" are
" the printable latin characters.
set iskeyword=@,48-57,_,192-255

" line length above which to break a line
" set textwidth=80

" Columns to highlight (local to window)
" set colorcolumn=81

" highlight colorcolumn set above
" highlight ColorColumn ctermbg=blue guibg=lightgrey

" highlight visual mode
highlight Visual ctermbg=232

" highlight search result
hi Search ctermbg=blue

filetype plugin on


" When paste is set, pasting text from out-vim to vim in original style
set pastetoggle=<f5>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           vim mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>n nzz
nnoremap <leader>N Nzz
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap <leader>r :source ~/.vimrc<CR>
nnoremap <leader>v :vs ~/.vimrc<CR>

" :&& first & means :s[ubstitude] command, second & means [flag] used last 
" :s[ubstitude] command
nnoremap & :&&<CR>  
xnoremap & :&&<CR>

" Map W to wa, when you enter :W it will be rapalced by :wq
command W wa
command Q qa
command WQ wa|qa

" give <C-p>/<C-n> capability of filtering history 
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Filetype Plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd BufNewFile *.c 0r ~/.vim/skeleton/slt.c

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           lightline.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2

" let g:lightline={
"     \'colorscheme':'wombat',
"     \}
"     

let g:lightline = {
          \ 'colorscheme': 'wombat',
      \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'charvalurhex',
      \ 'charvalurdigital', 'WheatherObsessed']]
      \ },
      \ 'component': {
          \   'charvalurhex': '0x%B',
          \   'charvalurdigital': '%b',
          \   'WheatherObsessed': '%{ObsessionStatus()}'
      \ },
      \ }

if !has('gui_running')
  set t_Co=256
endif

set noshowmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           repeat
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           YCM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight Pmenu ctermbg=207 ctermfg=black guibg=gray

let g:ycm_global_ycm_extra_conf ='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1

nnoremap <leader>f :YcmCompleter Format<CR>
nnoremap <leader>d :YcmCompleter GoToDefinition<CR> 
nnoremap <leader>p :YcmCompleter GoToDeclaration<CR> 
nnoremap <leader>F :YcmCompleter FixIt<CR> 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           matchit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on matchit package
packadd! matchit

