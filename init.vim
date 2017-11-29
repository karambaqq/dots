call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'dikiaap/minimalist'

Plug 'flazz/vim-colorschemes'

Plug 'mhinz/vim-startify'

Plug 'majutsushi/tagbar'

Plug 'shime/vim-livedown'

Plug 'ryanoasis/vim-devicons'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Plug 'JamshedVesuna/vim-markdown-preview'

" Plug 'vim-syntastic/syntastic'

" Plug 'python-mode/python-mode'

Plug 'Yggdroot/indentLine'

"Plug 'xolox/vim-session'

"Plug 'xolox/vim-misc'

Plug 'iamcco/markdown-preview.vim'

Plug 'tpope/vim-surround'

"Plug 'fisadev/FixedTaskList.vim'

Plug 'Valloric/YouCompleteMe'

Plug 'kristijanhusak/vim-hybrid-material'


" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Initialize plugin system
call plug#end()

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

set mouse=a

let python_highlight_all = 1
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%NERDTreeMinimalUI = 1
let g:airline_theme = 'wombat'
set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid
set t_Co=256

" TagBar 
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1 " автофокус на Tagbar при открытии
let g:tagbar_compact = 1
" NerdTree settings
" show NERDTree on F3
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']
let NERDTreeMinimalUI = 1

" Buffers
map <C-q> :bd<CR>      " CTRL+Q - close current buffer

set nobackup 	     " no backup files
set nowritebackup    " only in case you don't want a backup file while editing
set noswapfile 	     " no swap files

" Override go-to.definition key shortcut to Ctrl-]
" let g:pymode_rope_goto_definition_bind = "<C-]>"

" Override run current python file key shortcut to Ctrl-Shift-e
"let g:pymode_run_bind = "<C-S-e>"

" Override view python doc key shortcut to Ctrl-Shift-d
"let g:pymode_doc_bind = "<C-S-d>"
"let g:pymode_python = 'python3'
" let g:pymode_lint = 1
"let g:pymode_rope_completion = 0
"let g:pymode_rope = 0
"let g:pymode_rope_lookup_project = 0
"let g:pymode_rope_complete_on_dot = 0
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name


set encoding=utf-8
set incsearch	  
set hlsearch
set smarttab
set tabstop=4
set clipboard=unnamedplus

nnoremap <C-left> :bprevious<CR>
nnoremap <C-right> :bNext<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
let g:airline_skip_empty_sections = 1

function! MyLineNumber()
  return substitute(line('.'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g'). '/'.
    \    substitute(line('$'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g')
endfunction

call airline#parts#define('linenr', {'function': 'MyLineNumber', 'accents': 'bold'})

let g:airline_section_z = airline#section#create(['%3p%% | ', 'linenr', ' | %3v'])
