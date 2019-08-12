"set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

"Plugin 'jiangmiao/auto-pairs'

"call vundle#end()            " required
"filetype plugin indent on    " required
"
let skip_defaults_vim = 1
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
set splitright
set showmatch

au FileType python nmap <leader>r <Esc>:w<CR>:!clear;python3 %<CR>
au FileType php nmap <leader>r <Esc>:w<CR>:!clear;php %<CR>
au FileType ruby nmap <leader>r <Esc>:w<CR>:!clear;ruby %<CR>
au FileType js nmap <leader>r <Esc>:w<CR>:!clear;node %<CR>
au FileType go nmap <leader>gt :!go test -v<CR>
"au FileType clojure nmap <leader>e :Eval<CR>


"""""""
" colorscheme
"""""""
colorscheme molokai
"colorscheme onedark
"colorscheme solarized
"colorscheme Tomorrow-Night
"colorscheme gruvbox
"colorscheme jellybeans
set background=dark
"let g:molokai_original = 1
let g:rehash256 = 1


"""""""
" vim-go
"""""""
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>d <Plug>(go-doc)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>im <Plug>(go-implements)
au FileType go nmap <leader>rn <Plug>(go-rename)
au FileType go nmap <leader>tt <Plug>(go-test-func)
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)
au FileType go nmap <leader>dov <Plug>(go-doc-vertical)
au FileType go nmap <leader>dob <Plug>(go-doc-browser)

let g:go_echo_command_info = 1 " for test output
let g:go_highlight_function_parameters = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_bin_path = expand("~/go")
let g:go_test_timeout = '10s'
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
let g:go_metalinter_command='errcheck'
let g:go_def_reuse_buffer = 0
let g:go_decls_includes = "func,type"
let g:go_term_mode = "vsplit"
let g:go_test_show_name=1


"""""""
" ale
"""""""
"let g:ale_sign_error = '!'
"let g:ale_sign_warning = '?'
"let g:ale_completion_enabled = 1
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_swift_swiftlint_use_defaults = 1
"let g:ale_open_list = 0
"let g:ale_lint_delay = 1000
"let g:ale_linters = {
"      \ 'go': ['go vet', 'go build'],
"      \ }


"""""""
" nerdtree
"""""""
map <leader>nn :NERDTreeToggle<cr>
"let g:NERDTreeWinPos = "left"
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=30

"""""""
" tabbar
"""""""
map <leader>tb :TagbarToggle<cr>

"""""""
" snippets
"""""""
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-h>"
let g:UltiSnipsJumpNextTrigger="<c-l>"

""""""""
" airline
"""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
"let g:airline_theme='gruvbox'
"let g:airline_theme='onedark'
"let g:airline_theme='solarized'
let g:airline_theme='simple'
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

""""""
" rainbow parentheses
""""""
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:deoplete#enable_at_startup = 1

"""""""
" python model
"""""""
"let g:pymode_python = 'python3'
"let g:python3_host_prog = '/usr/local/bin/python3'
"let python_highlight_all = 1


"
"""""""
" deoplete.nvim
"""""""
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

"""""""
" gotagbar
"""""""
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }



""""""""
" rust
""""""""
let g:rustfmt_autosave = 1


""""""""
" elixir
""""""""
let g:mix_format_on_save = 1
au FileType elixir nmap <leader>dt <Esc>:ExDef<CR>
au FileType elixir nmap <leader>t <Esc>:!mix test<CR>
au FileType elixir nmap <leader>f <Esc>:!mix format<CR>
let g:alchemist_tag_map = '<C-]>'
let g:alchemist_tag_stack_map = '<C-[>'
