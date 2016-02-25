" Frankly, I rarely use vim and I don't understand a god damn thing in here.
" Hopefully my good friend Sarkis (https://github.com/sarkis/), 
" who I took this from, can explain to me what is going on here someday. Haha
" ============================================================================

set nocompatible
"syntax enable
filetype off

call plug#begin('~/.vim/plugged')
" General
Plug 'airblade/vim-gitgutter'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'kien/ctrlp.vim'
Plug 'mattn/gist-vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/YankRing.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Theme
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'whatyouhide/vim-gotham'

" JavaScript
Plug 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
Plug 'mtscout6/vim-cjsx'

" HTML
Plug 'slim-template/vim-slim'

" Ruby
Plug 'tpope/vim-rails'

" Go
Plug 'fatih/vim-go'

" Terraform
Plug 'hashivim/vim-terraform'
" Markdown
Plug 'tpope/vim-markdown'

call plug#end()

" ================ Encoding ==================================================
set encoding=utf-8

" ================ General Configuration =====================================
set number                      " Line numbers
"set relativenumber              " Relative line numbers
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000                " Store :cmdline history up to 1000
set showcmd                     " Show incomplete commands
set showmode                    " Show current mode
"set gcr=a:blinkon0              " Disable cursor blink
set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim
set modelines=0                 " Security vulnerabilities
set ruler                       " Show the x and y position
set laststatus=2                " Show the status line
set lazyredraw                  " Don't redraw for macros (performance)
set showmatch                   " Show matching brackets
set ttyfast                     " Scroll faster
set mouse=a                     " Automatically enable mouse usage
set mousehide                   " Hide the mouse cursor while typing
set clipboard=unnamed

set hidden                      " Allow buffers to exist in background
syntax on                       " Syntax highlighting


" ================ Search Settings ===========================================
set incsearch        " Find the next match as we type
set hlsearch         " Highlight searches by default
set ignorecase       " Ignore case when searching
set smartcase        " Don't ignore case search when there is a capital

" ================ Plugin Settings ===========================================
let g:NERDTreeIgnore = ['\.pyc$','\~$']
let g:NERDSpaceDelims = 1
let g:gitgutter_enabled = 0
let g:airline_powerline_fonts = 0
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:tmuxline_powerline_separators = 0

" ================ Turn Off Swap Files =======================================
set noswapfile
set nobackup
set nowritebackup

" ================ Persistent Undo ===========================================
" Keep undo history across sessions, by storing in file.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile
set undolevels=1000
set undoreload=10000

" ================ Indentation and Whitespace ================================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:›\ ,eol:¬,trail:·

" Remove trailing whitespaces and ^M chars
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line('.')
  let c = col('.')
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
autocmd FileType c,coffeescript,cpp,java,javascript,python,ruby,xml,yml
  \ autocmd BufWritePre <buffer> call s:StripTrailingWhitespaces()

" Don't wrap lines
"set nowrap

" ================ Folds =====================================================
set nofoldenable       " Dont fold by default

" ================ Scrolling =================================================
set scrolloff=4         " Scroll when 4 lines away from y margin
set sidescrolloff=15    " Scroll when 15 characters away from x margin
set sidescroll=1

" ================ Ignores ===================================================
set wildignore+=*.o,*.r,*.class,*.pyc,*.so,*.sl,*.tar,*.tgz,*.gz,*.dmg,*.zip
set wildignore+=*.pdf,*/.svn/*,*.toc,*.aux,*.dvi,*.log,*.lck,*.pem
set wildignore+=*.priv,*.pub,*.sassc,*.scssc,*.pid,*.jar,*.DS_Store
set wildignore+=*.gif,*.jpg,*.jpeg,*.png,*.doc,*.xls
" Ignore Rails folders
set wildignore+=*/app/assets/images/*,*/log/*,*/tmp/*
" Ignore Node folders
set wildignore+=*/node_modules/*
" Ignore compiled assets
set wildignore+=*/public/assets/*
" Ignore gem files
set wildignore+=*/spunkt_params

" ================ Custom Mappings ===========================================
let mapleader=','

" Find merge conflict markers
nmap <silent> <leader>cf <esc>/\v^[<=>]{7}( .*\|$)<cr>

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<cr>:put  *<cr>:set nopaste<cr>

" Clear the search buffer when hitting return
:nnoremap <cr> :nohlsearch<cr>

" Plugins
map <leader>a :Ag<space>
map <leader>d :Dispatch<space>
map <leader>g<space> :Git<space>
map <leader>gs :Gstatus<cr>
map <leader>gr :Gread<cr>
map <leader>gw :Gwrite<cr>
map <leader>gb :Gblame<cr>
vmap <leader>gb :Gbrowse!<cr>
map <leader>gd :Gdiff<cr>
map <leader>gv :GitV<cr>
map <leader>c :Rcontroller<space>
map <leader>m :Rmodel<space>
map <leader>v :Rview<space>
nnoremap <leader>n :NERDTreeToggle<CR>
map <leader>f :CtrlP<CR>
nnoremap <leader>gg :GitGutterToggle<CR>

"nnoremap <leader><space> :call whitespace#strip_trailing()<CR>

" Color Scheme
set t_Co=16
set background=dark
"colorscheme base16-ocean
colorscheme gotham


" old stuff
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
"if executable('ag')
"  " Use Ag over Grep
"  set grepprg=ag\ --nogroup\ --nocolor
"endif


" Fast Escape"
"if ! has('gui_running')
"   set ttimeoutlen=10
"    augroup FastEscape
"        autocmd!
"        au InsertEnter * set timeoutlen=0
"        au InsertLeave * set timeoutlen=1000
"    augroup END
"endif

"if $TMUX == ''
"  set clipboard+=unnamed
"endif
"set list
"set listchars=tab:›\ ,eol:¬ "trail:⋅
"set wildignore+=*.pyc,*/.git/*,*/.svn/*,*/.virtual_env/*,*/.mail/*,*.swp
"set wildmenu
"set wildmode=longest,list,full