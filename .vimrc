execute pathogen#infect()

syntax on 
set nu
set rnu
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab 
filetype plugin indent on
set fileencodings=utf-8

set noswapfile

set lbr
set tw=500 
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set hlsearch
set incsearch 


set clipboard=unnamed
set cursorline

let g:mapleader = " "
let mapleader=" "


nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>


nmap <leader>vs :vs<cr>
"set splitright
set showmatch
"let python_highlight_all = 1

au FileType python nmap <leader>r <Esc>:w<CR>:!clear;python %<CR>
au FileType php nmap <leader>r <Esc>:w<CR>:!clear;php %<CR>
"au FileType js nmap <leader>r <Esc>:w<CR>:!clear;node %<CR>

"""""""
" colorscheme
"""""""
"colorscheme Tomorrow-Night
"colorscheme Tomorrow-Night-Eighties
"colorscheme PaperColor
"colorscheme darcula
"colorscheme jellybeans
"colorscheme hybrid_material
colorscheme molokai
"colorscheme solarized
"set background=dark
let g:molokai_original = 1
let g:rehash256 = 1


"""""""
" vim-go
"""""""
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>tt <Plug>(go-test-func)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>s <Plug>(go-implements)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>e <Plug>(go-rename)

let g:go_echo_command_info = 1 " for test output
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_bin_path = expand("~/Workspace/Go")
let g:go_test_timeout = '30s'
let g:go_def_mode = 'godef'
let g:go_decls_includes = "func,type"

"""""""
" syntastic
"""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0

"let g:syntastic_go_checkers = ['go']
"let g:syntastic_php_checkers = ['php']
"let g:syntastic_python_checkers = ['pylint']

"""""""
" nerdtree
"""""""
map <leader>nn :NERDTreeToggle<cr>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1

"""""""
" tabbar
"""""""
map <leader>tb :TagbarToggle<cr>

"""""""
" snippets
"""""""
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpNextTrigger="<c-k>"

""""""""
" airline
"""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_alt_sep = '|'

"""""""
" ctrlp
"""""""
let g:ctrlp_max_files=0
map <leader>f :CtrlP<cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$' 

"""""""
" ack
"""""""
map <leader>s :Ack!<Space>

"""""""
" neomake
"""""""
autocmd BufWritePost * Neomake
let g:neomake_error_sign   = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '∆', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign    = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}
let g:neomake_go_enabled_makers = [ 'go' ]
let g:neomake_go_gometalinter_maker = {
  \ 'args': [
  \   '--tests',
  \   '--enable-gc',
  \   '--concurrency=3',
  \   '--fast',
  \   '-D', 'aligncheck',
  \   '-D', 'dupl',
  \   '-D', 'gocyclo',
  \   '-D', 'gotype',
  \   '-E', 'errcheck',
  \   '-E', 'misspell',
  \   '-E', 'unused',
  \   '%:p:h',
  \ ],
  \ 'append_file': 0,
  \ 'errorformat':
  \   '%E%f:%l:%c:%trror: %m,' .
  \   '%W%f:%l:%c:%tarning: %m,' .
  \   '%E%f:%l::%trror: %m,' .
  \   '%W%f:%l::%tarning: %m'
  \ }

