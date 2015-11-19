set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'kchmck/vim-coffee-script'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'juvenn/mustache.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'cclow/vim-bufexplorer'
Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/vimwiki'
Plugin 'rgarver/Kwbd.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'duff/vim-scratch'
Plugin 'b4winckler/vim-objc'
Plugin 'airblade/vim-rooter'
Plugin 'mtscout6/vim-cjsx'

call vundle#end()


let g:solarized_termcolors=256
set background=dark
colorscheme solarized
syntax enable

let mapleader = ","

map <F1> <Esc>
imap <F1> <Esc>
nmap <F2> :bn<CR>
nmap <F3> :bp<CR>
nmap <F4> :NERDTreeToggle<CR>

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
nmap <leader>q :%s/\s\+$//<CR> "Remove trailing whitespace
nmap <leader>D <Plug>Kwbd
nmap <leader>d :lcl<CR>
map <leader>p :set invpaste<CR>
map <leader>b :Gblame<CR>
map <leader>t :CtrlPMixed<CR>
map <leader>st :Gstatus<CR>
nmap <leader>e :BufExplorer<CR>
nnoremap <leader>dt "=strftime("%H:%M %d.%m %Y")<CR>p


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
set statusline=%<%f\ %{fugitive#statusline()}%h%m%r%=%t\ \|\ %-14.(%l,%c%V%)\ %P
set laststatus=2
set ruler
set t_Co=256
set guioptions=
set nofoldenable
set cursorline

filetype plugin indent on
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

let g:CommandTWildIgnore=&wildignore . ",**/bower_components/*" . ",**/node_modules/*"

iab ture true
iab widht width
iab conosle console
iab conosole console
