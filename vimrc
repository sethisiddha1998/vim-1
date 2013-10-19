set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'sjl/badwolf'
Bundle 'scrooloose/nerdtree'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'kien/ctrlp.vim'
Bundle 'davidhalter/jedi-vim'
Bundle 'mattn/emmet-vim'

filetype plugin indent on
syntax enable " enable syntax highlighting
if has('gui_running')
    set guioptions=g " disable all GUI elements
    set background=dark
    colors badwolf
    if has('mac')
        set guifont=Menlo\ Regular\ for\ Powerline:h12
    else
        set guifont=DejaVu\ Sans\ Mono\ 10
    endif
else
    set t_Co=256
endif

if has('multi_byte')
    set listchars=tab:»\ ,trail:·,eol:¶,extends:→,precedes:←,nbsp:×
endif

set fillchars=stl:\ ,stlnc:\ ,vert:│

if has("linebreak")
      let &sbr = nr2char(8618).' '  " Символ который будет показан перед перенесенной строкой
endif

let mapleader = "," " map leader

let maplocalleader = "_" " local leader

set lazyredraw " Don't redraw while executing macros (good performance config)

set laststatus=2 " enable statusline

set incsearch " Search by typing

set hlsearch " highlight search result

set magic " For regular expressions turn magic on

set ignorecase " Searches are Non Case-sensitive

set cursorline " Highlight current cursor position

set smartcase

set cc=80

set showmatch " Show matching brackets when text indicator is over them

set showcmd " Show incomplete cmds down the bottom

set showmode " Show current mode down the bottom

set title " show title

set acd " Vim will change the current working directory whenever you open a file

set expandtab " use space instead of tab

set autoread " Reload files changed outside automatically

set tabstop=4 " 1 tab == 4 spaces

set shiftwidth=4 

set smarttab " Be smart when using tabs

set autoindent " Enable auto indent

set smartindent " Smart indent

set wrap " enable word wrap

set noerrorbells visualbell t_vb= " No annoying sound on errors

set encoding=utf8 " Default encoding

set termencoding=utf-8 " terminal encoding

set fileencodings=utf8,cp1251

set mousehide " Hide cursor when typing

set number " enable line numbers

set ruler " always display cursor position

set mouse=a " Mouse support

set mousemodel=popup

set hidden " A buffer becomes hidden when it is abandoned

set nobackup " Disable backup files

set noswapfile " Disable swap files

set noautochdir " change the current working directory whenever you open a file

set wildmenu " Turn on the WiLd menu

set wildmode=list:longest,list:full

set wildignore+=*.o,*.pyc,*.jpg,*.png,*.gif,*.db,*.obj,.git " Ignore compiled files

set clipboard+=unnamed " Global clipboard between the system and the editor

set ttyfast

set path=.,,**

" NERDTree configuration
let NERDTreeWinSize = 30
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1
let NERDTreeChDirMode=2
let NERDTreeHijackNetrw=0
let NERDTreeIgnore = ['\.png$','\.pyc$', '\.db$', '\.git$', '*.\.o$', '.*\.out$', '.*\.so$', '.*\.a$', '.*\~$']
map <leader>e :NERDTreeToggle<CR>

" Enable Jedi autocomplete
let g:jedi#auto_initialization = 1 

" leader + c jedi completion
let g:jedi#completions_command="<leader>c" 

" Disable jedi-vim documentation
autocmd FileType python setlocal completeopt-=preview 


" Syntax check mode for python
let g:syntastic_python_checkers=['pylint', 'python']

" Syntax check mode for javascript
let g:syntastic_javascript_checkers = ['jslint']

" Warning and Error symbols
let g:syntastic_error_symbol = nr2char(33)
let g:syntastic_style_error_symbol = nr2char(33)
let g:syntastic_warning_symbol = nr2char(9888)
let g:syntastic_style_warning_symbol = nr2char(9888)

let g:airline#extensions#tabline#enabled = 1 " Enable airline tabs

let g:airline#extensions#tabline#fnamemod = ':t' " :help filename-modifiers

let g:airline_powerline_fonts = 1 " Use airline fonts

let g:ctrlp_match_window = 'bottom,order:top,min:1,max:20'

" Open buffers
map <leader>b :CtrlPBuffer<CR>

" Open files
map <leader>f :CtrlP<CR>

" Show/hide trail characters
nmap <leader>l :set list!<CR>

" Create new tab
nmap <leader>t :tabnew<CR>

" Close buffer without save
nmap <leader>w :bd!<CR>

