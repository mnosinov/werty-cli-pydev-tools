set nocompatible         " required for Vundle
set hidden
set incsearch
set smartcase
set noerrorbells
set scrolloff=7
set nowrap
" set option to use local nested .vimrc in directory tree
set exrc
filetype off              " required for Vundle, but at the end in turned on

" 80 letters line delimiter background color
hi ColorColumn  ctermfg=None	ctermbg=236	cterm=None
" draw 80 letters delimiter - like one vertical bar
let &colorcolumn="81"
" draw 80 letters delimiter - all letters that a more than 80 - are colored
"let &colorcolumn="80,".join(range(81,999),",")

"call matchadd('ColorColumn', '\%82v', 100)

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" add all your plugins here (note older versions of Vundle
"	 	used Bundle instead of Plugin)---------------------------
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'preservim/nerdtree'
" Plugin 'scrooloose/nerdtree'                                  " side bar with file tree view
" Plugin 'Xuyuanp/nerdtree-git-plugin'                          " show git status in file tree view
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tmhedberg/SimpylFold'
Plugin 'mattn/emmet-vim'
Plugin 'Yggdroot/indentLine'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'herringtondarkholme/yats.vim'                         " Typescript syntax
Plugin 'maxmellon/vim-jsx-pretty'                             " JSX syntax
Plugin 'prettier/vim-prettier'                                " Prettier - automatically format file according to rules/editorconfig
Plugin 'othree/xml.vim'                                       " to work with HTML/XML tags, see https://www.vim.org/scripts/script.php?script_id=1397
Plugin 'cakebaker/scss-syntax.vim'                            " SCSS syntax
"Plugin 'morhetz/gruvbox'


" All of your Plugins must be added before the following line------------
call vundle#end()            " required

" position of new window after horizontal or vertical splitting
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable mouse in vim in modes: visual, inser, command-line, if all then nvic
" or a
set mouse=vic
" cursor settings: block in normal, bar in insert and underscore in replace
let &t_EI = "\<Esc>[1 q"
let &t_SR = "\<Esc>[3 q"
let &t_SI = "\<Esc>[5 q"
set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
" scroll cursor down/up/left/right faster in tty
set ttyfast

" Enable search highlightings
set hlsearch
:nnoremap <CR> :nohlsearch<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

" color schemes for different types of files
" main is werty-tty - by default and for *.py
" werty-tty - is scheme specificaly for my python files

" color schema customization
set t_Co=256
set background=dark
colorscheme werty-tty

let python_highlight_all=1
syntax on

autocmd VimEnter * colorscheme werty-tty

autocmd BufNewFile, BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

autocmd BufRead,BufNewFile *.js,*.htm,*.html,*.css, *.json
	\ setlocal tabstop=2
	\ shiftwidth=2
	\ softtabstop=2

autocmd BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_add_preview_to_completeopt=1
let g:ycm_auto_hover=''		" disable popup documentation window on cursor hover
set completeopt-=preview
"set completeopt=longest,menuone
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" SignColum aka Gutter - vertical line on the left side with different marks
set scl=auto	" show if neede, otherwise - hide

""python with virtualenv support
"py3 << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

" syntax inspection
let g:syntastic_python_pylint_post_args = [ '--max-line-length=80', 
	\ '--disable=mixed-indentation,missing-docstring,superfluous-parens', 
	\ '--argument-rgx=[a-z_][a-z0-9_]{0,30}$',
	\ '--attr-rgx=[a-z_][a-z0-9_]{0,30}$',
	\ '--function-rgx=[a-z_][a-z0-9_]{0,30}$',
	\ '--method-rgx=[a-z_][a-z0-9_]{0,30}$',
	\ '--variable-rgx=[a-z_][a-z0-9_]{0,30}$'
	\ ]
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E126,E127,E131,E501,E225,W504'

" NERDTree plugin customization - use CtrlP instead this plugin.
let NERDTreeIgnore=['\.pyc$', '\~$', '^__pycache__$', 'Session.vim', 'tags'] "ignore files in NERDTree
nnoremap <F12> :NERDTreeToggle<CR>
inoremap <F12> <Esc> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

" CtrlP is better than NERDTree, because CtrlP is Fuzzy Finder. Use it more!
nnoremap <F3> :CtrlPBuffer<CR>
inoremap <F3> <Esc> :CtrlPBuffer<CR>
nnoremap <F2> :CtrlPMRU<CR>
inoremap <F2> <Esc> :CtrlPMRU<CR>
set wildignore+=*/__pycache__/*,*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,tags,Session.vim


" temporary command - just to create color scheme
nnoremap <F5> :so $VIMRUNTIME/syntax/hitest.vim<CR>

" Use buffers more than tabs
" F9 - go to previous buffer
" F10 - go to next buffer
" F11 - go to last used buffer
nnoremap <F9> :bprevious<CR> 
inoremap <F9> <Esc> :bprevious<CR> 
nnoremap <F10> :bnext<CR>
inoremap <F10> <Esc> :bnext<CR>
nnoremap <F11> :b #<CR>
inoremap <F11> <Esc> :b #<CR>
" jump to buffer by number from list (:ls)
:cnoremap ls ls<cr>:b

" turn off line numbers
set nu!
" turn on line numbers
"set nu
" turn on relative numbers
set rnu

" fzf customization
"command! -bang -nargs=* Ag
"  \ call fzf#vim#grep(
"  \   'ag --column --numbers --noheading --color --smart-case '.shellescape(<q-args>), 1,
"  \   fzf#vim#with_preview(), <bang>0)
nnoremap <C-g> :Rg<CR>
nnoremap <C-h> :Ag<CR>
"nnoremap <C-h> :Ag <C-R><C-W><CR>
" Customize fzf colors to match your color scheme                                          
   " - fzf#wrap translates this to a set of `--color` options                                 
   let g:fzf_colors =                                                                         
   \ { 'fg':      ['fg', 'Normal'],                                                           
     \ 'bg':      ['bg', 'Normal'],                                                           
     \ 'hl':      ['fg', 'Directory'],                                                          
     \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],                             
     \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],                                       
     \ 'hl+':     ['fg', 'Statement'],                                                        
     \ 'info':    ['fg', 'PreProc'],                                                          
     \ 'border':  ['fg', 'Directory'],                                                           
     \ 'prompt':  ['fg', 'Conditional'],                                                      
     \ 'pointer': ['fg', 'Exception'],                                                        
     \ 'marker':  ['fg', 'Keyword'],                                                          
     \ 'spinner': ['fg', 'Label'],                                                            
     \ 'header':  ['fg', 'Comment'] } 

let g:airline_theme='badwolf'
"let g:airline_theme='molokai'
"let g:airline_theme='murmur'
"let g:airline_solarized_bg='dark'
"let g:airline#extensions#tabline#enabled = 0
"let g:airline_powerline_fonts = 0
"let g:airline#extensions#tabline#show_splits = 0
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = '|'
"let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"let g:airline#extensions#tabline#tabs_label = ''
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#buffer_idx_mode = 0
"let g:airline#extensions#tabline#show_tab_nr = 1
"let g:airline#extensions#tabline#tab_nr_type= 2
"let g:airline#extensions#tabline#show_tab_type = 1
let g:airline_section_z = "%p%% Ln:%l/%L Col:%c"
let g:airline#extensions#keymap#enabled = '0'
let g:airline#extensions#branch#enabled = 1
let g:airline_detect_spelllang=0
let g:airline_detect_spell=0

" indentLine Plugin - show vertical intendation
let g:indentLine_enabled = 0
let g:indentLine_char = '|'
"let g:indentLine_char = '·'
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2


" battery indicator
"set statusline=...%{battery#component()}...
"let g:battery#update_statusline = 1 " For statusline.

"set guifont=Menlo\ for\ Powerline

let g:python_highlight_space_errors = 0

" Always show tabs
"set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

set clipboard=unnamed

let g:session_autosave = 'no'

" cyrillic keyboard
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
" letter ё
:setlocal spell spelllang=ru,ru_yo,en_us

" set tags folder - to use with "Ctrl + ]" to goto definition of variable or
" method
set tags=tags,./tags

nmap <F8> :TagbarToggle<CR>
imap <F8> <Esc> :TagbarToggle<CR>
let g:tagbar_autoclose = 1


" save current file key mapping - Ctrl+s
"nmap <C-s> :w<CR>k
"nmap <C-s> :!ctags --recurse=yes<CR>
"imap <C-s> <Esc>:w<CR>a
" save all opend buffers mapping - Shift+Ctrl+s
nmap <C-s> :wa<CR>:call system('ctags --recurse=yes --exclude=node_modules --exclude=.git --exclude=__pycache__')<CR>:mks!<CR><CR>
imap <C-s> <Esc>:wa<CR>:call system('ctags --recurse=yes --exclude=node_modules --exclude=.git --exclude=__pycache__')<CR>:mks!<CR><CR>

filetype plugin indent on    " required for Vundle
runtime macros/matchit.vim

" Emmet chortcuts
let g:user_emmet_mode = 'n'	" only enable normal mode functions.
let g:user_emmet_leader_key=','
