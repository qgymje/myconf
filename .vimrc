execute pathogen#infect()

syntax on "set nu
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

set cursorline

let g:mapleader = ","
let mapleader=","

nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>


nmap <leader>- :vs<cr>
set splitright

"""""""
" colorscheme
"""""""
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

"set background=dark
"colorscheme solarized


"""""""
" vim-go
"""""""
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
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

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_bin_path = expand("~/Workspace/Go")

"""""""
" syntastic
"""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'errcheck']
let g:syntastic_php_checkers = ['php']

let g:syntastic_enable_elixir_checker = 1

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
" ycm
"""""""
let g:ycm_use_ultisnips_completer = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \   'elixir' : ['.'],
  \ }


"""""""
" snippets
"""""""
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"

""""""""
" airline
"""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_alt_sep = '|'

""""""""
" rust
"""""""
let g:rustfmt_autosave = 1
