" General settings
syntax enable
set number 			 	 " Enable line numbers
set relativenumber " Show line relative from cursor
set showcmd        " display incomplete commands
set ruler          " show the cursor position all the time
set laststatus=2   " show file name always on bottom
set autowrite      " Automatically :write before running commands
set clipboard=unnamed " Share clipboard with the OS
set hidden         " Change buffer without saving it
set history=1000   " Lines remembered in a history table
set autoread 			 " When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again.
set wildmenu       " Command-line completion
set nojoinspaces   " Insert one space after a '.', '?' and '!' with a join command.
set lazyredraw     " Screen will not be redrawn while executing macros, registers and other commands
set backupdir-=.   " Remove the file location for the backup directory configuration
set directory-=.   " Remove the file location for the directory configuration
if !isdirectory($HOME . "/tmp") " Create the tmp folder in home if it doesn't exist for directory and backup
  call mkdir($HOME . "/tmp", "")
endif
let mapleader = " " " Map leader to space
set splitbelow     " Split to the bottom
set splitright     " Split to the right
set termguicolors  " Enable the 24-bit colors in vim
set nostartofline  " Kept the cursos in the same column when the buffer is changed


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


" Folding
set foldmethod=indent
" Open buffers with their local max foldlevel
autocmd BufWinEnter * normal zR
" set foldclose=all " Make folds close automatically when you move out of it


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


" ryanoasis/vim-devicons
set encoding=UTF-8
set guifont=Hack\ Nerd\ Font:h12
let g:airline_powerline_fonts=1|" Setting for the plugin to work with airline

" rakr/vim-one 
set background=dark|" Set the dark theme
"let g:one_allow_italics=1|" Enable the italics
colorscheme one   " Set the theme to one, which is in plugins

" vim-airline/vim-airline
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled=1|" Display the buffers on the top if there is only one tab
let g:airline#extensions#tabline#left_sep=' '|" Change the default separator for the tabline
let g:airline#extensions#tabline#left_alt_sep='|'|" Change the default separator for the tabs
let g:airline#extensions#tabline#buffer_nr_show = 1|" Show the buffer number
let g:airline#extensions#tabline#formatter='unique_tail'|" Format

" nathanaelkane/vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1

" mhinz/vim-startify
let g:startify_session_autoload=1|" Open sessions when a session file is opened in vim
let g:startify_session_persistence=1|" Automatically update sessions before leaving vim or loading a new session
autocmd User Startified normal zR
 
" xuhdev/vim-latex-live-preview
let g:livepreview_previewer='open -a Preview'
let g:livepreview_engine='xelatex'
let g:livepreview_cursorhold_recompile=0

" prettier/vim-prettier
let g:prettier#exec_cmd_async = 1
let g:prettier#config#print_width = 120

" Shortcuts
nnoremap <Leader><Leader> <C-^>|" Switch between the last two files
inoremap <C-Space> <C-x><C-o>|" Mapping for omnicompletion
nnoremap <Leader>w :bd<cr>|" Mapping for closing the buffer
" Map left and right buffer to cmd shift [, if it doesn't work remap in iterm 
nnoremap <Esc>[1;9D :bp<cr>|" Move to the previous buffer with alt+cmd+left
nnoremap <Esc>[1;9C :bn<cr>|" Move to the next buffer with alt+cmd+right
" nnoremap <C-w> :bd<cr>|" Close buffer with ctrl+w
nnoremap <Esc>[1;3D :tabp<cr>|" Move to the left tab with alt+left
nnoremap <Esc>[1;3C :tabn<cr>|" Move to the right tab with alt+right
" Command line editing shortcuts
cnoremap <C-a> <Home>
cnoremap <Esc>b <C-Left>
" cnoremap <M-Left> <S-Left>
" cnoremap <M-Right> <S-Right>
" Navigation Between windows
" Quicker window movement replaced with plugin vim-tmux-navigator
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-h> <C-w>h
"nnoremap <C-l> <C-w>l
cnoremap <Esc>f <C-Right>
" Quicker windows resize
nnoremap <C-0> <C-w>=
nnoremap _ <C-w><
nnoremap +  <C-w>>
nnoremap = <C-w>+
nnoremap - <C-w>-
" NERDTree
nnoremap <Leader>o :NERDTreeToggle<cr>
nnoremap <Leader>i :NERDTree<cr>
" Fzf
nnoremap <Leader>p :Files<cr>
nnoremap <Leader>b :Buffers<cr>
nnoremap <Leader>h :History<cr>
" Ycm
nnoremap <Leader>d :YcmCompleter GoToDefinition<cr>
" Prettier
nmap <Leader>py <Plug>(Prettier)

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Ignored files/directories from autocomplete (and CtrlP)
set wildignore+=*/tmp/*
set wildignore+=*.so
set wildignore+=*.zip
set wildignore+=*/vendor/*
set wildignore+=*/node_modules/*
set wildignore+=*/bin/*
set wildignore+=*/target/*
set wildignore+=*.class
