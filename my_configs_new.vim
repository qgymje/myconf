set nu
set rnu
syntax on

set nocompatible              " be iMproved, required
filetype plugin indent on    " required

set clipboard=unnamed

if exists('$TMUX')
    set term=screen-256color
endif

"colorscheme peaksea
"colorscheme jellybeans
"colorscheme onedark
colorscheme molokai
"colorscheme ir_black
"colorscheme tomorrow
"colorscheme solarized

let g:molokai_original = 1

"------plugin setting-----
"
""""""""""""""""""""""""""""""
" => jsBeautify
""""""""""""""""""""""""""""""
map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


""""""""""""""""""""""""""""""
" => vim-go
""""""""""""""""""""""""""""""
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)
let g:go_auto_type_info=0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1
let g:go_play_open_browser = 0
let g:go_bin_path = expand("~/Workspace/Go/bin")


""""""""""""""""""""""""""""""
" => js-libs
""""""""""""""""""""""""""""""
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0

""""""""""""""""""""""""""""""
" => airline
""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""
" => tagbar
""""""""""""""""""""""""""""""
nmap <leader>tb :TagbarToggle<CR>
