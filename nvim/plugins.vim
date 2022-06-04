if empty(glob('.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Theme/Lightline plugins.
Plug 'ajmwagar/vim-deus'
Plug 'ajmwagar/lightline-deus'
Plug 'itchyny/lightline.vim'

" Vim improvements plugins.
Plug 'nathanaelkane/vim-indent-guides'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'chrisbra/Colorizer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'gcmt/wildfire.vim'
Plug 'janko-m/vim-test'
Plug 'pbrisbin/vim-mkdir'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

" Ruby plugins.
Plug 'tpope/vim-endwise', { 'for': ['ruby', 'eruby', 'elixir', 'eelixir'] }
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'vim-ruby/vim-ruby'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby', 'eruby'] }
Plug 'kana/vim-textobj-user'

" Elixir plugins.
Plug 'mhinz/vim-mix-format', { 'for': ['elixir', 'eelixir'] }
Plug 'elixir-editors/vim-elixir', { 'for': ['elixir', 'eelixir'] }

" Javascript plugins.
Plug 'pangloss/vim-javascript'

call plug#end()
