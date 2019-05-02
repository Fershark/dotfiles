" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/bundle')

  Plug 'rakr/vim-one'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'ryanoasis/vim-devicons'

  Plug 'scrooloose/nerdtree'
  Plug 'brooth/far.vim'
  Plug 'mhinz/vim-startify'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'vim-scripts/AutoComplPop'
  Plug 'ervandew/supertab'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'scrooloose/nerdcommenter'

  Plug 'akz92/vim-ionic2'
  Plug 'vim-scripts/groovyindent-unix'
  Plug 'shawncplus/phpcomplete.vim', { 'for': ['php'] }
  Plug 'sheerun/vim-polyglot'
  Plug 'Valloric/YouCompleteMe'
  Plug 'xuhdev/vim-latex-live-preview'

call plug#end()
