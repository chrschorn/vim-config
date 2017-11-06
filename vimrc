"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc | Christoph Schorn
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Detect OS
let s:is_win = has('win16') || has('win32')

" Start maximized
if has("gui_running")
    " GUI is running or is about to start.
    if s:is_win
        " Use ~x on an English Windows version or ~n for French.
        au GUIEnter * simalt ~x
    else
        set lines=999 columns=999
    endif
endif

" Save vimfiles path
let s:vimfiles = s:is_win ? '$HOME/vimfiles' : '$HOME/.vim'

" Local vimrc path
let s:localvimrc = $HOME . "/" . (s:is_win ? "_" : ".") . "vimrc.local"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Using plug.vim
call plug#begin(s:vimfiles.'/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'gabrielelana/vim-markdown'
"Plug 'mitsuhiko/vim-python-combined'
if has('gui_running')
    Plug 'Yggdroot/indentLine'
endif
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ajh17/VimCompletesMe'
if has('python') || has('python3')
    " Might fail to install, visit their README if it does
    " Use the python launcher on windows
    " Kind of a heavy plugin, but very IDE-like completion
    " Plug 'Valloric/YouCompleteMe', { 'do': (s:is_win ? 'py ' : './') . 'install.py' }
endif

" I like colorschemes
Plug 'xolox/vim-misc' | Plug 'xolox/vim-colorscheme-switcher'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'jordwalke/flatlandia'
Plug 'sjl/badwolf'
Plug 'rakr/vim-one'
"Plug 'zsoltf/vim-maui'
"Plug 'reedes/vim-colors-pencil'
"Plug 'nanotech/jellybeans.vim'
"Plug 'notpratheek/vim-luna'
"Plug 'mhartington/oceanic-next'
"Plug 'limadm/vim-blues'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'chriskempson/base16-vim'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set utf8 as standard encoding
set encoding=utf-8

" Allow hiding of modified buffers
set hidden

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Always keep top/bottom of file x lines away from the cursor 
set scrolloff=8

" Turn on the Wild menu (suggestions for command line autocomplete)
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.git,*.hg,*.svn

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When 'ignorecase' and 'smartcase' are both on, if a pattern contains an uppercase letter, it is case sensitive
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Add extra margin to the left
set foldcolumn=0

" Show line numbers
set number
set relativenumber

" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" Always show the status line
set laststatus=2

" Don't just delete the thing instantly when 'c<motion>'
set cpoptions+=$

" Make clipboard behave like a normal program
set clipboard=unnamed

" Show a highlighted column
set colorcolumn=80

" Add spellfiles
set spell
set spelllang=en,de
execute ':set spellfile=' . s:vimfiles . '/spell/words.utf-8.add'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Smart indents on new line
set autoindent
set smartindent

" Wrap line if longer than window with, and only break whole words
set wrap linebreak nolist

" Show whitespace
set list
set listchars=tab:\ \ ,trail:·


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Colors & Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Set colorscheme
if has('gui_running')
    let g:gruvbox_contrast_dark = 'hard'
    let g:gruvbox_contrast_light = 'medium'
    colorscheme hybrid
    let g:airline_theme='gruvbox'
else
    colorscheme slate
endif

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T "remove toolbar
    " set guioptions-=e "remove tab pages
    set guioptions-=m "remove menu bar
    set guioptions-=r "remove right-hand scroll bar
    set guioptions-=L "remove left-hand scroll bar
    set t_Co=256
    set guitablabel=%M\ %t
    set guifont=Hack:h11,Consolas:h11

    " Better font rendering
    if has('directx') && s:is_win
        set renderoptions=type:directx,gamma:1.2,contrast:1,level:0.75,geom:1,renmode:5,taamode:1
    endif
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use jk/kj to exit insert mode, use it like a single keystroke!
inoremap jk <Esc>
inoremap kj <ESC>

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w<cr>

" Edit vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

execute "nmap <silent> <leader>elv :e " . s:localvimrc . "<CR>"
execute "nmap <silent> <leader>slv :so " . s:localvimrc . "<CR>"

" Turn off highlight search markings
nmap <silent> <leader>n :nohls<CR>

" Go to current file's directory
nmap <silent> <leader>cd :cd %:p:h<CR>
nmap <silent> <leader>cdw :lcd %:p:h<CR> "Only for current window

" Paste from "+ register (copy from external windows)
nmap <silent> <leader>pe :normal "+p<CR>

" Toggle indent lines
nmap <silent> <leader>il :IndentLinesToggle<CR>

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Move between windows easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Toggle Gundo tree
nnoremap <F5> :GundoToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NERDTree settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    let g:NERDTreeDirArrowExpandable = '▸'
    let g:NERDTreeDirArrowCollapsible = '▾'
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" airline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    let g:airline_powerline_fonts = 1
    "let g:airline#extensions#whitespace#symbol = "\u2021" "Default symbol (12 pointed star) might not be available
endif

let g:airline#extensions#whitespace#enabled = 0 "Disable whitespace extension
let g:airline_skip_empty_sections = 1 "Do not draw separators for empty sections (only for the active window)
let g:airline#extensions#tabline#enabled = 1 "Shows a tab view


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ctrlp settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_reuse_window = 'startify' "Allow to use the empty window when starting gvim without a file


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" indent guides settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '┊'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Gundo settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gundo_prefer_python3 = 1 "Gundo tries to use Python 2.4+ *really* hard


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Local system overwrites
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(s:localvimrc)
    execute "source " . s:localvimrc
endif
