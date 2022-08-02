" SETTINGS FOR NVIM .config/nvim/init.vim
" Also set --> alias v="nvim"

" Workaround some broken plugins which set guicursor indiscriminately.
autocmd OptionSet guicursor noautocmd set guicursor=
set autoindent
set clipboard+=unnamedplus
set number
set relativenumber
set hidden                        " Handle multiple buffers better.
set title                         " Set the terminal's title
"set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
 "                 \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  "                \,sm:block-blinkwait175-blinkoff150-blinkon175
"nmap <C-n> :NERDTreeToggle<CR>
nmap <C-b> :NERDTreeToggle<cr>
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
"inoremap <Left>  <ESC>:echoe "Use h"<CR>
"inoremap <Right> <ESC>:echoe "Use l"<CR>
"inoremap <Up>    <ESC>:echoe "Use k"<CR>
"inoremap <Down>  <ESC>:echoe "Use j"<CR>

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'crusoexia/vim-monokai'
Plug 'github/copilot.vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'tacahiroy/ctrlp-funky'
" Initialize plugin system :PlugInstall
call plug#end()

" Configure ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_show_hidden = 1
"nmap <C-i> :CtrlPFunky<cr>
"let g:ctrlp_extensions = ['funky']

let g:ctrlp_working_path_mode = 'ra'
" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/vendor/**,*/node_modules/**,*/bower_components/**,*/.git/**,*/.hg/**,*/.svn/**,*/__pycache__/**


set guicursor=
:colorscheme gruvbox
set t_TI= t_TE=
let &t_TI = ""
let &t_TE = ""

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0



" Remove the [>4;2m when you start nvim
"set cursorline
"set cursorcolumn
"set cursorlinebg=
" Problem: when you start nvim, the cursor is not visible
"

set t_TI= t_TE=
:set guicursor=
set guicursor=
" Workaround some broken plugins which set guicursor indiscriminately.
:autocmd OptionSet guicursor noautocmd set guicursor=

:set guicursor=
" Workaround some broken plugins which set guicursor indiscriminately.
:autocmd OptionSet guicursor noautocmd set guicursor=

let &t_TI = ""
let &t_TE = ""

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=r                 " enable mouse click
"set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
" enable copy to clipboard using <C-y> and <C-p>
" set clipboard=unnamedplus   " using system clipboard
" set clipboard=unnamed      " using system clipboard
"
"
"


autocmd FileType c,cpp,java,scala let b:comment_leader = '//'
autocmd FileType sh,ruby,python   let b:comment_leader = '#'
autocmd FileType conf,fstab       let b:comment_leader = '#'
autocmd FileType tex              let b:comment_leader = '%'
autocmd FileType mail             let b:comment_leader = '>'
autocmd FileType vim              let b:comment_leader = '"'
"function! CommentToggle()
    "execute ':silent! s/\([^ ]\)/' . escape(b:comment_leader,'\/') . ' \1/'
    "execute ':silent! s/^\( *\)' . escape(b:comment_leader,'\/') . ' \?' . escape(b:comment_leader,'\/') . ' \?/\1/'
"endfunction
"map <F7> :call CommentToggle()<CR>


autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

nnoremap <C-Up> 5k
nnoremap <C-Down> 5j

noremap <C-k> 10k
noremap <C-j> 10j
"noremap <C-h> 10h
"noremap <C-l> 10l

" Move line one line above
nnoremap <CS-Down> ddjp
nnoremap <CS-Up> ddkkp

inoremap <CS-Up> <Esc>ddkkpi
inoremap <CS-Down> <Esc>ddjpi

" Move line one line below
"nnoremap <C-k> ddkkp
"nnoremap <C-j> ddjp

"inoremap <CS-j> <Esc>ddjpi
"inoremap <CS-k> <Esc>ddkkpi
autocmd BufWritePre * :%s/\s\+$//e

" Easier window navigtaion
nmap <C-h> <C-w>h
"nmap <C-k> <C-w>k
"nmap <C-j> <C-w>j
nmap <C-l> <C-w>l

set autoindent          " always set autoindenting on
set copyindent          " copy the previous indentation on autoindenting
