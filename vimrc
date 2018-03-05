" General settings
syntax enable
set number 				" Enable line numbers
set showcmd       " display incomplete commands
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set autowrite     " Automatically :write before running commands

" Color theme
colorscheme molokai
let g:rehash256 = 1

" Identation and tabs
set tabstop=2
set shiftwidth=2

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Use one space, not two, after punctuation.
set nojoinspaces

let mapleader = " "
" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<Tab>"
    else
        return "\<C-p>"
    endif
endfunction
inoremap <Tab> <C-r>=InsertTabWrapper()<CR>
inoremap <S-Tab> <C-n>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement replaced with plugin vim-tmux-navigator
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-h> <C-w>h
" nnoremap <C-l> <C-w>l

" Ignored files/directories from autocomplete (and CtrlP)
set wildignore+=*/tmp/*
set wildignore+=*.so
set wildignore+=*.zip
set wildignore+=*/vendor/*
set wildignore+=*/node_modules/

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
