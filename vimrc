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
Plug 'christoomey/vim-tmux-navigator'
Plug 'justinmk/vim-sneak'
Plug 'flowtype/vim-flow'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

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

if has("nvim")
  tnoremap <Esc> <C-\><C-n>
endif

nmap Y y$
nmap <leader>w :NERDTreeToggle<CR>
nmap <leader>D <Plug>Kwbd
nmap <leader>d :lcl<CR>
map <leader>p :set invpaste<CR>
map <leader>b :Gblame<CR>
map <leader>t :Files<CR>
map <leader>f :Ag<CR>
nmap <leader>e :Buffers<CR>
map <leader>st :Gstatus<CR>
nnoremap <leader>dt "=strftime("=== Week %U - %A %d.%m %Y ===")<CR>p
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

let NERDTreeWinPos = 'left'
let NERDTreeShowBookmarks = 1

let g:vimwiki_list = [{'path':'~/Dropbox/vimwiki', 'path_html':'~/Dropbox/vimwiki/html/'}]

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
