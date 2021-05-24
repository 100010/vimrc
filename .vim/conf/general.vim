let mapleader="\<Space>"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

"" ack
let g:ackprg = 'ag --nogroup --nocolor --column'
nmap <Leader>q :Ack! ""<Left>

"" airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep          = '▶'
let g:airline_left_alt_sep      = '»'
let g:airline_right_sep         = '◀'
let g:airline_right_alt_sep     = '«'
let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
let g:airline#extensions#readonly#symbol   = '⊘'
let g:airline#extensions#linecolumn#prefix = '¶'
let g:airline#extensions#paste#symbol      = 'ρ'

"" ale
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['eslint'],
\  'vue': ['eslint'],
\  'typescript': ['eslint'],
\}
let g:ale_fix_on_save = 1

"" easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"" color schema
colorscheme codedark
"" nerdtree
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rb $', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 40
let NERDTreeShowHidden=1
nnoremap <Leader>dir :NERDTreeTabsToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

"" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1


"" file type
au FileType javascript set ts=2 sw=2 expandtab
au FileType typescript set ts=2 sw=2 expandtab
au FileType react set ts=2 sw=2 expandtab
au FileType vue set ts=2 sw=2 expandtab
au BufNewFile *.js set ft=javascript fenc=utf-8
au BufNewFile *.ts set ft=typescript fenc=utf-8
au BufNewFile *.tsx set ft=react fenc=utf-8
au BufNewFile *.vue set ft=vue fenc=utf-8

"" jsx
let g:jsx_ext_required = 0
let g:vim_jsx_pretty_highlight_close_tag = 1

"" autocmd
autocmd BufWritePre * :FixWhitespace
autocmd BufWritePre .scala :SortScalaImports

"" scala
au BufRead,BufNewFile *.sbt set filetype=scala

nnoremap <silent> <Leader>g :<C-u>silent call <SID>find_rip_grep()<CR>

function! s:find_rip_grep() abort
    call fzf#vim#grep(
                \   'rg --ignore-file ~/.ignore --column --line-number --no-heading --hidden --smart-case .+',
                \   1,
                \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%', '?'),
                \   0,
                \ )
endfunction
highlight LineNr ctermfg=50