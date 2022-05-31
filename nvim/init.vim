source ~/.config/nvim/plugins.vim
source ~/.config/nvim/settings.vim

" Disable Perl support.
let g:loaded_perl_provider = 0

" Set neovim to use truecolors.
set termguicolors

" === General Config ===

set number
set numberwidth=4
set norelativenumber
set backspace=indent,eol,start "Allow backspace in insert mode
set history=1000               "Store lots of :cmdline history
set showcmd                    "Show incomplete cmds down the bottom
set showmode                   "Show current mode down the bottom
set gcr=a:blinkon0             "Disable cursor blink
set visualbell
set autoread                   "Reload files changed outside vim
set mouse=a                    "Enable mouse interaction with vim
set colorcolumn=81
set hidden                     "Required for operations modifying multiple buffers like rename.
set lazyredraw

" Open new split panes to right and bottom, which feels more natural.
set splitbelow
set splitright

set diffopt+=vertical

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

" Turn on syntax highlighting.
if !exists("g:syntax_on")
  syntax enable
endif

let mapleader=" "

" === Turn off swap files ===

set noswapfile
set nobackup
set nowb

" === Indentation ===

set autoindent
set smarttab
set shiftwidth=2
set softtabstop=2
set expandtab

filetype plugin indent on

" Display tabs and trailing spaces visually.
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" === Folds ===

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" === Scrolling ===

set scrolloff=10
set sidescrolloff=15
set sidescroll=1

" === Cursor Position ===

set cursorline
set nocursorcolumn

" === Search ===

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" Tab Shortcuts.
nnoremap tf :tabfirst<CR>
nnoremap tn :tabnext<CR>
nnoremap tp :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabnew<CR>
nnoremap tx :tabclose<CR>

" Manage Vim config more easily.
nnoremap <leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>vr :source $MYVIMRC<cr>

" Activate preview when using search and replace aka: %s.
if has('nvim')
  set inccommand=split
endif
