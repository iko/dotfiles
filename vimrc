set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'juvenn/mustache.vim'
Plug 'scrooloose/nerdtree'
Plug 'cclow/vim-bufexplorer'
Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/vimwiki'
Plug 'rgarver/Kwbd.vim'
Plug 'derekwyatt/vim-scala'
Plug 'duff/vim-scratch'
Plug 'b4winckler/vim-objc'
Plug 'airblade/vim-rooter'
Plug 'mtscout6/vim-cjsx'
Plug 'mxw/vim-jsx'
Plug 'JulesWang/css.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'junegunn/seoul256.vim'

call plug#end()

set background=dark
colorscheme seoul256

let mapleader = ","

map <F1> <Esc>
imap <F1> <Esc>
nmap <F2> :bn<CR>
nmap <F3> :bp<CR>

vmap <C-C> "+y

noremap <Up> gk
noremap <Down> gj

inoremap () ()<Esc>i
inoremap {} {}<Esc>i
inoremap [] []<Esc>i

inoremap "" ""<Esc>i
inoremap '' ''<Esc>i
inoremap <> <><Esc>i
inoremap %% %  %<Esc>hi


nmap Y y$
nmap <leader>w :NERDTreeToggle<CR>
nmap <leader>D <Plug>Kwbd
nmap <leader>d :lcl<CR>
map <leader>p :set invpaste<CR>
map <leader>b :Gblame<CR>
map <leader>t :CtrlPMixed<CR>
nnoremap <D-o> :CtrlPMixed<CR>
map <leader>st :Gstatus<CR>
nmap <leader>e :BufExplorer<CR>
nnoremap <leader>dt "=strftime("%H:%M %d.%m %Y")<CR>p

command W w

set expandtab
retab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set smartindent
set autoindent
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

filetype plugin on

autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.hamstache set ft=haml
autocmd BufRead,BufNewFile *.rabl setf ruby

" Don't comment automatically
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let NERDTreeWinPos = 1
let NERDTreeShowBookmarks = 1
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'

let g:bufExplorerShowTabBuffer=1
let g:bufExplorerShowRelativePath=1

set wildignore+=**/node_modules/*,build/**,dist/**
let g:CommandTWildIgnore=&wildignore . ",**/bower_components/*" . ",**/node_modules/*"
let g:toggle_list_copen_command="botright copen"

iab ture true
iab widht width
iab conosle console
iab conosole console
