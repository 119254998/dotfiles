" ~/.vimrc sources this file
" source  ~/.vim/init.vim

colorscheme habamax
filetype plugin indent on
syntax on

set nocompatible
set backspace=indent,eol,start
set relativenumber
set noshowcmd
set wrap
set autoread
set breakindent
set undofile
set expandtab
set numberwidth=4
set number
set wmnu
set scl="yes"
set smarttab
set tabstop=2
set ls=2
set shiftwidth=2
set softtabstop=0
set cursorline
set expandtab
set noai
set cin
set ttyfast
set ignorecase
set smartcase
set scrolloff=10
set hlsearch
set termguicolors
set list
set listchars=tab:»-,trail:·,nbsp:␣

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=\ %m
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %{&fileformat}
set statusline+=\ %#CursorColumn#
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

let mapleader=" "
let maplocalleader=" "

nnoremap <Space> <Nop>
nnoremap <Esc> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>z :update<CR>:so<CR>

nnoremap <A-Left> <C-w>h
nnoremap <A-Down> <C-w>j
nnoremap <A-Up> <C-w>k
nnoremap <A-Right> <C-w>l

if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
endif
