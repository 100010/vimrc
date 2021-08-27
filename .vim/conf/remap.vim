nnoremap <Leader><Leader> :w!<CR>
nnoremap <Leader>qqq :q!<CR>
"" reload file
nnoremap <leader>e :e!<CR>
"" yunk & paste
nnoremap <leader>d diw
nnoremap <leader>y yiw
nnoremap <leader>c ciw
nnoremap <leader>p diw<Left>"0p
"" split
nnoremap <Leader>s :<C-u>split<CR>
nnoremap <Leader>v :<C-u>vsplit<CR>
" set moving between windows to ctrl+hjkl
noremap <silent> <C-l> <c-w>l
noremap <silent> <C-h> <c-w>h
noremap <silent> <C-k> <c-w>k
noremap <silent> <C-j> <c-w>j
"" Fastest way to move buffer
nnoremap <silent> <S-j> :bprev<CR>
nnoremap <silent> <S-k> :bnext<CR>
nnoremap <silent> <S-w> :bw<CR>
"" open file/buffers search tab
nnoremap <Leader>t :GFiles --cached --others<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
"" + => increment
nnoremap + <C-a>
"" f => decrement
nnoremap - <C-x>
" move like emacs
vmap <C-a> ^
vmap <C-e> $
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
"" enable to move when insert mode
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>