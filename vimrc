set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'kchmck/vim-coffee-script'
Plug 'juvenn/mustache.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'rgarver/Kwbd.vim'
Plug 'duff/vim-scratch'
Plug 'airblade/vim-rooter'
Plug 'mxw/vim-jsx'
Plug 'JulesWang/css.vim'
Plug 'slim-template/vim-slim.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'junegunn/seoul256.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'justinmk/vim-sneak'
Plug 'flowtype/vim-flow'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'junegunn/goyo.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

call plug#end()

set background=dark
colorscheme seoul256

lang en_US.UTF-8

let mapleader = ","

vmap <C-C> "+y

noremap <Up> gk
noremap <Down> gj

inoremap "" ""<Esc>i
inoremap {} {}<Esc>i
inoremap [] []<Esc>i
inoremap () ()<Esc>i
inoremap '' ''<Esc>i
inoremap <> <><Esc>i
inoremap %% %  %<Esc>hi

" coc confirm selection
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

if has("nvim")
  tnoremap <Esc> <C-\><C-n>
endif

nmap Y y$
nmap <leader>w :NERDTreeToggle<CR>
nmap <leader>g :Goyo<CR>
nmap <leader>D <Plug>Kwbd
nmap <leader>d :lcl<CR>
map <leader>p :set invpaste<CR>
map <leader>b :Gblame<CR>
map <leader>t :Files<CR>
map <leader>f :Ag<CR>
map <leader>j :bnext<CR>
map <leader>k :bprev<CR>
nmap <leader>e :Buffers<CR>
map <leader>st :Gstatus<CR>
" nnoremap <leader>dt "=strftime("#### %A %d.%m.%Y ####")<CR>p
nnoremap <leader>dt "=strftime("-----\n\n==== %A %d.%m.%Y ====\n\n")<CR>p3j
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap td :tabclose<CR>
command! W w

set expandtab
retab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set smartindent
set autoindent
set autoread
set list
set lcs=trail:·,tab:\|\
set scrolloff=3
set hidden
set nostartofline
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set noswapfile
set statusline=%<%f\ %{fugitive#statusline()}%h%m%r%=%t\ \|\ %-14.(%l,%c%V%)\ %P
set laststatus=2
set ruler
set guioptions=
set nofoldenable
set cursorline
set number
set relativenumber
set mouse=a
nohlsearch

filetype plugin on

autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.hamstache set ft=haml
autocmd BufNewFile,BufRead *.slim set ft=slim
autocmd BufRead,BufNewFile *.rabl setf ruby
autocmd FocusGained,BufEnter * :checktime

" Don't comment automatically
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let NERDTreeWinPos = 'left'
let NERDTreeShowBookmarks = 1

let g:vimwiki_list = [{'path':'~/Dropbox/vimwiki', 'path_html':'~/Dropbox/vimwiki/html/'}]
let g:vimwiki_conceallevel = 0
let g:vimwiki_url_maxsave = 0

set wildignore+=**/node_modules/*,build/**,dist/**
let g:toggle_list_copen_command="botright copen"
let g:ackprg = 'ag --nogroup --nocolor --column'
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

iab ture true
iab widht width
iab conosle console
iab conosole console

" print semicolons
let g:prettier#config#semi = 'true'

" single quotes over double quotes
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'
