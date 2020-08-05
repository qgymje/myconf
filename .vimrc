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
set noeb vb t_vb=
set nu
set rnu
set smarttab
set expandtab 
set lbr
set tw=500 
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set foldlevel=100
set fileencodings=utf-8
set noswapfile
set hlsearch
set incsearch 
set clipboard=unnamed
set cursorline

filetype plugin indent on

au FileType html,vim,javascript,elixir,clojure,ruby,erlang setl tabstop=2
au FileType java,php,python,go,c setl shiftwidth=4
au FileType java,php,python,go,c setl tabstop=4


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let g:mapleader = " "
let mapleader=" "

nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>hs :split<cr>
nmap <leader>vs :vs<cr>
set splitbelow
set showmatch


"""""""
" colorscheme
"""""""
"colorscheme molokai
"colorscheme vim-material
"colorscheme onedark
"colorscheme one
"colorscheme solarized
"colorscheme darcula
"colorscheme Tomorrow-Night
colorscheme gruvbox
"colorscheme jellybeans
set background=dark
"set background=light
"let g:molokai_original = 1
let g:rehash256 = 1
let g:onedark_termcolors=16

""""""""
" airline
"""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_theme='gruvbox'
"let g:airline_theme='onedark'
"let g:airline_theme='solarized'
"let g:airline_theme='darcula'
"let g:airline_theme='one'
"let g:airline_theme='simple'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_alt_sep = '|'


"""""""
" go
"""""""
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>d <Plug>(go-doc)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>im <Plug>(go-implements)
au FileType go nmap <leader>rn <Plug>(go-rename)
au FileType go nmap <leader>tt :GoTestFunc -v<CR>
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)
au FileType go nmap <leader>dov <Plug>(go-doc-vertical)
au FileType go nmap <leader>dob <Plug>(go-doc-browser)

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
let g:go_def_reuse_buffer = 1
let g:go_decls_includes = "func,type"
let g:go_term_enabled=1
let g:go_metalinter_autosave=0


""""""""
" python
"""""""
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/local/bin/python3'
let g:python_highlighte_all = 1
let g:pymode_rope = 1
let g:pymode_rope_complete_on_dot = 0

au FileType python nmap <leader>dt <C-c>g


""""""""""""
" rust
""""""""""""
autocm BufNewFile,BufRead *rs set filetype=rust

let g:rustfmt_autosave = 1
let g:rust_clip_command = 'pbcopy'
au FileType rust nmap <leader>r :RustRun<CR>

let g:racer_experimental_completer = 1
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_insert_paren = 1
augroup Racer
    autocmd!
    autocmd FileType rust nmap <leader>dt <Plug>(rust-def-tab)
    autocmd FileType rust nmap <leader>ds <Plug>(rust-def-split)
    autocmd FileType rust nmap <leader>dv <Plug>(rust-def-vertical)
    autocmd FileType rust nmap <leader>i <Plug>(rust-doc)
    autocmd FileType rust nmap <leader>ti <Plug>(rust-doc-tab)
augroup END

let g:ycm_language_server =
\ [
\   {
\     'name': 'rust',
\     'cmdline': ['rust-analyzer'],
\     'filetypes': ['rust'],
\     'project_root_files': ['Cargo.toml']
\   }
\ ]


"""""""
" ale
"""""""
let g:ale_sign_error = '!'
let g:ale_sign_warning = '?'
let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_swift_swiftlint_use_defaults = 1
let g:ale_open_list = 0
let g:ale_lint_delay = 1000
let g:ale_linters = {
      \ 'go': ['go vet', 'go build'],
      \ 'javascript': ['eslint'],
      \ }



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

"""""""
" snippets
"""""""
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-h>"
let g:UltiSnipsJumpNextTrigger="<c-l>"

