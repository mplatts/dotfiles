set nocompatible               " be iMproved
filetype off                   " required!
let mapleader=","              " Change mapleader

" PLUGINS
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
runtime macros/matchit.vim

Bundle 'gmarik/vundle'
Bundle 'twe4ked/vim-peepopen'
Bundle 'skwp/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'majutsushi/tagbar'
Bundle 'lukaszkorecki/CoffeeTags'
Bundle 'chriseppstein/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
Bundle 'skwp/vim-powerline'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'Yggdroot/indentLine'
Bundle 'taiansu/nerdtree-ag'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'docunext/closetag.vim'
Bundle 'skwp/vim-iterm-rspec'

" Vim session needs both of these
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'

" Git gutter
Bundle 'mhinz/vim-signify'

" When you have split windows and want to zoom into one window
Bundle 'vim-scripts/ZoomWin'
" Bundle 'airblade/vim-gitgutter'

Bundle 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0 " goes with above vim-json plugin
:setlocal foldmethod=syntax

" Bundle 'Townk/vim-autoclose'
Bundle 'Raimondi/delimitMate'

Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'juvenn/mustache.vim'

" shows '4/5 matches' on footer when searching:
Bundle 'IndexedSearch'

" When you type :s/word/new_word all the instances of 'word' are highlighted
Bundle 'osyo-manga/vim-over'

" Not practiced yet
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-surround'
Bundle 'rking/ag.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-endwise'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'goldfeld/vim-seek'

" 4 below required for snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"


" Learn current before unlocking these
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" see :h vundle for more details or wiki for FAQ


" APPEARANCE
syntax enable
set background=dark

if has("gui_running")
  colorscheme sorcerer
"  colorscheme gruvbox
" colorscheme solarized
"  colorscheme codeschool
"  colorscheme flatland
"  colorscheme jellybeans
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M      " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  set guifont=Monaco:h13,Ubuntu\ Mono:h18,Inconsolata:h17
  set guioptions-=r
  set guioptions-=L
  set guioptions-=T     " Disable the macvim toolbar
  autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
  :set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands " "
  set vb " Disable bells
else
  let g:CSApprox_loaded = 1       "dont load csapprox if we no gui support - silences an annoying warning
endif



" BINDINGS

" TIPS
" map = creates a key map that works in normal, visual, select and operator pending modes
" map! = creates a key map that works in insert and command-line mode
" A better alternative than using the 'map' and 'map!' commands is to use mode-specific map commands
" nmap = mapping for normal mode
" :nmap - Display normal mode maps
" :imap - Display insert mode maps
" :vmap - Display visual and select mode maps
" :smap - Display select mode maps
" :xmap - Display visual mode maps
" :cmap - Display command-line mode maps
" :omap - Display operator pending mode maps

" Cool time savers
vnoremap <C-r> hy:%s/<C-r>h//gc<left><left><left>

" open vimrc in split window
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" updates changes you made in vimrc in vim
:nnoremap <leader>sv :source $MYVIMRC<cr>

" hit ,v to visually select the current word
nnoremap <leader>v viw

" OverCommandLine
nnoremap <leader>r :OverCommandLine<cr>%s/

" Insert mode with indent
nnoremap <silent>i @=empty(getline("."))? "S" : "i"<CR>
nnoremap <silent>I @=empty(getline("."))? "S" : "I"<CR>
nnoremap <silent>a @=empty(getline("."))? "S" : "a"<CR>
nnoremap <silent>A @=empty(getline("."))? "S" : "A"<CR>

" ZoomWin
nnoremap <leader>z :ZoomWin<cr>

" Vim rspec
map <Leader>t :RunItermSpec<cr>

" NerdTreeTabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>
nmap <D-N> <plug>NERDTreeTabsToggle<CR>                            " Cmd-n for nerd tree
nnoremap <silent> <C-\> :NERDTreeFind<CR>:vertical res 50<CR> " Open the project tree and expose current file in the nerdtree with Ctrl-\

" Navigation
nnoremap <leader>l $
nnoremap <leader>h ^

noremap <leader>W :w !sudo tee % > /dev/null<CR>    " Save a file as root (,W)
nnoremap <silent> // :noh<CR>" Clear current search highlight by double tapping //

map <silent> <D-1> :tabn 1<cr>                      " Use numbers to pick the tab you want (like iTerm)
map <silent> <D-2> :tabn 2<cr>
map <silent> <D-3> :tabn 3<cr>
map <silent> <D-4> :tabn 4<cr>
map <silent> <D-5> :tabn 5<cr>
map <silent> <D-6> :tabn 6<cr>
map <silent> <D-7> :tabn 7<cr>
map <silent> <D-8> :tabn 8<cr>
map <silent> <D-9> :tabn 9<cr>

nnoremap <silent> <C-h> <C-w>h " Window/Tab/Split Manipulation
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

nnoremap <silent> vv <C-w>v " Create window splits easier
nnoremap <silent> ss <C-w>s
map <Leader>ct :!ctags -R .<CR> " ,ct = remake ctags

" CtrlP
nnoremap <leader>. :CtrlPTag<cr>
nmap <Space>p :CtrlP<CR>

" Tagbar
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" EasyMotion
call EasyMotion#InitOptions({
  \   'leader_key'      : '<Leader><Leader>'
  \ , 'keys'            : 'fjdksewoavn'
  \ , 'do_shade'        : 1
  \ , 'do_mapping'      : 1
  \ , 'grouping'        : 1
  \
  \ , 'hl_group_target' : 'Question'
  \ , 'hl_group_shade'  : 'EasyMotionShade'
  \ })
hi clear EasyMotionTarget " Make EasyMotion more yellow, less red
hi! EasyMotionTarget guifg=yellow
nmap ,<ESC> ,,w
nmap ,<S-ESC> ,,b

" PLUGIN SETTINGS

" NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 50
let g:nerdtree_tabs_open_on_gui_startup = 0     " Auto open nerd tree on startup
let g:nerdtree_tabs_focus_on_files = 1          " Focus in the main content window

" CtrlP
let g:ctrlp_max_files = 50000
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_max_height = 10       " maxiumum height of match window
let g:ctrlp_switch_buffer = 'et'    " jump to a file if it's open already
let g:ctrlp_use_caching = 1       " enable caching
let g:ctrlp_clear_cache_on_exit=0     " speed up by not removing clearing cache evertime
let g:ctrlp_show_hidden = 1       " show me dotfiles
let g:ctrlp_mruf_max = 250        " number of recently opened files
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|doc'

" Ag
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif


" Powerline
let g:Powerline_symbols='fancy'
let g:Powerline_theme='skwp'
let g:Powerline_colorscheme='skwp'
set laststatus=2 "always show the statusline"

" Surround
" ,# Surround a word with #{ruby interpolation}
map ,# ysiw#
vmap ,# c#{<C-R>"}<ESC>

" ," Surround a word with "quotes"
map ," ysiw"
vmap ," c"<C-R>""<ESC>

" ,' Surround a word with 'single quotes'
map ,' ysiw'
vmap ,' c'<C-R>"'<ESC>

" ,) or ,( Surround a word with (parens)
" The difference is in whether a space is put in
map ,( ysiw(
map ,) ysiw)
vmap ,( c( <C-R>" )<ESC>
vmap ,) c(<C-R>")<ESC>

" ,[ Surround a word with [brackets]
map ,] ysiw]
map ,[ ysiw[
vmap ,[ c[ <C-R>" ]<ESC>
vmap ,] c[<C-R>"]<ESC>

" ,{ Surround a word with {braces}
map ,} ysiw}
map ,{ ysiw{
vmap ,} c{ <C-R>" }<ESC>
vmap ,{ c{<C-R>"}<ESC>

" DelimitMate
"create line break when pressing enter
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" CORE ENVIRONMENT
filetype plugin on
set encoding=utf-8
" set cursorline cursorcolumn
set ruler "see line information
set smartcase
set autoindent "indentation settings
set smartindent
set shiftwidth=2 "tabs as 2 spaces
set expandtab
set smarttab
set clipboard=unnamed                   " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set wildmenu                            " Enhance command-line completion
set esckeys                             " Allow cursor keys in insert mode
set backspace=indent,eol,start          " Allow backspace in insert mode
set ttyfast                             " Optimize for fast terminal connections
set gdefault                            " Add the g flag to search/replace by default
set encoding=utf-8 nobomb               " Use UTF-8 without BOM
set number                              " Enable line numbers
set tabstop=2                           " Make tabs as wide as two spaces
set hlsearch                            " Highlight searches
set ignorecase                          " Ignore case of searches
set incsearch                           " Highlight dynamically as pattern is typed
set modeline                            " Respect modeline in files
set modelines=4
set exrc                                " Enable per-directory .vimrc files and disable unsafe commands in them
set secure
set laststatus=2                        " Always show status line
set mouse=a                             " Enable mouse in all modes
set noerrorbells                        " Disable error bells
set nostartofline                       " Don’t reset cursor to start of line when moving around.
set shortmess=atI                       " Don’t show the intro message when starting Vim
set showmode                            " Show the current mode
set title                               " Show the filename in the window titlebar
set showcmd                             " Show the (partial) command as it’s being typed
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
set noswapfile
set nobackup
set nowb

" COOL FUNCTIONS
" Generate ctags with: ctags -R .
" hit ,f to find the definition of the current class
" this uses ctags. the standard way to get this is Ctrl-]
nnoremap <silent> ,f <C-]>

" use ,F to jump to tag in a vertical split
nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>

nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>

if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif
