" General settings
syntax enable
set number 				" Enable line numbers
set relativenumber " Show line relative from cursor
set showcmd       " display incomplete commands
set ruler         " show the cursor position all the time
set laststatus=2  " show file name always on bottom
set autowrite     " Automatically :write before running commands
set clipboard=unnamed " Share clipboard with the OS
set hidden        " Change buffer without saving it
set history=1000  " Lines remembered in a history table
set autoread 			" When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again.
set wildmenu     " Command-line completion
set nojoinspaces " Insert one space after a '.', '?' and '!' with a join command.
set backupdir-=. " Remove the file location for the backup directory configuration
set directory-=. " Remove the file location for the directory configuration
if !isdirectory($HOME . "/tmp") " Create the tmp folder in home if it doesn't exist for directory and backup
  call mkdir($HOME . "/tmp", "")
endif
let mapleader = " " " Map leader to space
set splitbelow " Split to the bottom
set splitright " Split to the right


" Identation and tabs(spaces)
set tabstop=2       " The width of a hard tabstop measured in spaces -- effectively the (maximum) width of an actual tab characteFr.
set shiftwidth=2    " Number of spaces to use for each step of (auto)indent
set expandtab       " Enabling this will make the tab key (in insert mode) insert spaces instead of tab characters.
set smarttab        " insert spaces or tabs to go to the next indent of the next tabstop when the cursor is at the beginning of a line
set autoindent      " Copy indent from the current line when starting a new line


" Search 
set ignorecase
set smartcase                           " Ignore case only if seach string is all lowercase
set hlsearch                            " Highlight results of a search
set incsearch                           " Display the match for the string while typing a search
nnoremap <silent> <Esc> :let @/=""<CR>|" Clear search pattern


" Plugins
if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
endif


" Filetype
filetype plugin on
set omnifunc=syntaxcomplete#Complete
if filereadable(expand("~/.vim/filetypes.vim"))
  source ~/.vim/filetypes.vim
endif


" Folding
set foldmethod=indent
" Open buffers with their local max foldlevel
autocmd BufWinEnter * normal zR
set foldclose=all " Make folds close automatically when you move out of it


" Appearance
set termguicolors " Enable the 24-bit colors in vim
colorscheme one   " Set the theme to one, which is in plugins
set background=dark|" Set the dark theme
let g:one_allow_italics=1|" Enable the italics


" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**


" Windows
" Quicker window movement replaced with plugin vim-tmux-navigator
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-h> <C-w>h
" nnoremap <C-l> <C-w>l


" Shortcuts
nnoremap <Leader><Leader> <C-^>|" Switch between the last two files
inoremap <C-Space> <C-x><C-o>|" Mapping for omnicompletion
" Quicker windows resize
nnoremap <C-n> <C-w><
nnoremap <C-m>  <C-w>>
nnoremap + <C-w>+
nnoremap - <C-w>-


" Ignored files/directories from autocomplete (and CtrlP)
set wildignore+=*/tmp/*
set wildignore+=*.so
set wildignore+=*.zip
set wildignore+=*/vendor/*
set wildignore+=*/node_modules/
