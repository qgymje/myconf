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


au FileType html,vim,javascript,elixir,clojure,ruby,erlang setl tabstop=2
au FileType html,vim,javascript,elixir,clojure,ruby,erlang setl shiftwidth=2
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
"colorscheme material
"let g:material_theme_style = 'darker'
"colorscheme onedark
"colorscheme one
"colorscheme solarized
"colorscheme darcula
"colorscheme Tomorrow-Night
colorscheme gruvbox
"colorscheme everforest
"colorscheme jellybeans
"set background=light
"let g:molokai_original = 1
set background=dark
let g:rehash256 = 1
let g:onedark_termcolors=16
let g:solarized_termcolors=256

""""""""
" airline
"""""""
set laststatus=2
"let g:airline_theme='simple'
"let g:airline_theme='gruvbox'
"let g:airline_theme='onedark'
"let g:airline_theme='one'
"let g:airline_theme='solarized'
"let g:airline_theme='material'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter= 'unique_tail_improved'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


""""""""
" coc.nvim
""""""""
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

autocmd CursorHold * silent call CocActionAsync('highlight')

"""""""
" ale
"""""""
let g:ale_sign_error = '😡'
let g:ale_sign_warning = '🤡'
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_linters = {'go': ['golangci-lint']}

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set statusline=%{LinterStatus()}

"""""""
" snippets
"""""""
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<c-o>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpNextTrigger="<c-z>"

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
" vim-go
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

au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)

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
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
let g:go_def_reuse_buffer = 1
let g:go_decls_includes = "func,type"
let g:go_term_enabled=1
let g:go_term_reuse = 1
let g:go_term_close_on_exit = 0
let g:go_metalinter_autosave=0

