set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "gmarik/vundle"

Bundle "tpope/vim-fugitive"
Bundle "kchmck/vim-coffee-script"
Bundle "altercation/vim-colors-solarized"
Bundle "wincent/Command-T"
Bundle "juvenn/mustache.vim"
Bundle "scrooloose/nerdtree"
Bundle "cclow/vim-bufexplorer"
Bundle "tpope/vim-haml"
Bundle "pangloss/vim-javascript"
Bundle "tpope/vim-markdown"
Bundle "tpope/vim-surround"
Bundle "vim-scripts/vimwiki"
Bundle "rgarver/Kwbd.vim"
Bundle 'derekwyatt/vim-scala'

let g:solarized_termcolors=256
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
map <leader>T :CommandTBuffer<CR>
map <leader>F :CommandTFlush<CR>
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

" Don't comment automatically
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let NERDTreeWinPos = 1
let NERDTreeShowBookmarks = 1
let g:CommandTMatchWindowAtTop = 1

let g:bufExplorerShowTabBuffer=1
let g:bufExplorerShowRelativePath=1

iab ture true
iab widht width
iab conosle console
iab conosole console
