execute pathogen#infect()

set nocompatible
syntax on
filetype plugin indent on
let skip_defaults_vim = 1

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


let g:mapleader = " "
let mapleader=" "

nmap <leader>w :w!<cr>
nmap <leader>q :bd<cr> 
nmap <leader>qq :q!<cr>


nmap <leader>hs :split<cr>
nmap <leader>vs :vs<cr>
set splitbelow
set showmatch

"tabs move
nnoremap <silent> <C-t>j :tabnext<cr>
nnoremap <silent> <C-t>k :tabprevious<cr>
nnoremap <silent> <C-t>n :tabnew<cr>

"windows move
"<C-w>h/j/k/l

"buffers move
nnoremap <silent> <C-j> :bn<cr>
nnoremap <silent> <C-k> :bp<cr>
nnoremap <silent> <C-h> :bf<cr>
nnoremap <silent> <C-l> :bl<cr>

"cursor move
"<C-D>
"<C-F>
"<C-U>
"<C-B>


"filetype tabs
au FileType html,vim,javascript,elixir,clojure,ruby,erlang setl tabstop=2
au FileType html,vim,javascript,elixir,clojure,ruby,erlang setl shiftwidth=2
au FileType java,php,python,go,c,rust setl shiftwidth=4
au FileType java,php,python,go,c,rust setl tabstop=4


"""""""
" colorscheme
"""""""
"colorscheme molokai
"let g:molokai_original = 1
"colorscheme material
"let g:material_theme_style = 'darker'
"colorscheme onedark
"let g:onedark_termcolors=16
"colorscheme one
"colorscheme darcula
"colorscheme Tomorrow-Night
colorscheme gruvbox
"colorscheme jellybeans
"colorscheme solarized
let g:rehash256 = 1
set background=dark
"set background=light

""""""""
" airline
"""""""
set laststatus=2
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter= 'unique_tail_improved'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '⎮'

"""""""
" indent
"""""""
let g:indentLine_color_term = 239


""""""
" syntastic 
""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"""""""
" nerdtree
"""""""
map <leader>nn :NERDTreeToggle<cr>
let NERDTreeIgnore = ['__pycache__']
"let g:NERDTreeWinPos = "left"
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=30

"""""
" ctrl-p
"""""
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

"""""""
" tabbar
"""""""
map <leader>tb :TagbarToggle<cr>
let g:tagbar_ctags_bin="/opt/homebrew/bin/ctags"

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


nnoremap <leader>dt :YcmCompleter GoToDefinitionElseDeclaration<CR>

"""""""
" Go
"""""""
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>tf :GoTestFunc -v<CR>
au FileType go nmap <leader>d <Plug>(go-doc)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <leader>imp <Plug>(go-implements)
au FileType go nmap <leader>ren <Plug>(go-rename)

let g:go_highlight_function_parameters = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_bin_path = expand("~/Workspace/go/bin")
let g:go_test_timeout = '10s'
let g:go_def_reuse_buffer = 1
let g:go_decls_includes = "func,type"
let g:go_term_enabled=1
let g:go_term_reuse = 1
let g:go_term_close_on_exit = 0  "very important
let g:go_metalinter_autosave=1
let g:go_rename_command = 'gopls'

""""""
"Python
""""""
