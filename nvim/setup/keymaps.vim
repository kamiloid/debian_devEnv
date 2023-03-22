"KEY-BINDING////////////////////////////
"--IDENTATION////////////////
imap <TAB> <ESC>:><CR>A
nmap <TAB> <ESC>:><CR>
vmap <TAB> :><CR>
"--BACK IDENTATION///////////
imap <S-TAB> <ESC>:<<CR>A
nmap <S-TAB> <ESC>:<<CR>
vmap <S-TAB> :<<CR>
"--NEXT/PREV BUFFER//////////
" imap <leader><TAB> <ESC>:BufferNext<CR>
" nmap <leader><TAB> <ESC>:BufferNext<CR>
" vmap <leader><TAB> <ESC>:BufferNext<CR>
"
" imap <leader><S-TAB> <ESC>:BufferPrevious<CR>
" nmap <leader><S-TAB> <ESC>:BufferPrevious<CR>
" vmap <leader><S-TAB> <ESC>:BufferPrevious<CR>

imap <C-b> <ESC>:NERDTreeToggle<CR>
nmap <C-b> <ESC>:NERDTreeToggle<CR>
vmap <C-b> <ESC>:NERDTreeToggle<CR>

imap <leader><TAB> <ESC>:bnext<CR>
nmap <leader><TAB> <ESC>:bnext<CR>
vmap <leader><TAB> <ESC>:bnext<CR>

imap <leader><S-TAB> <ESC>:bprevious<CR>
nmap <leader><S-TAB> <ESC>:bprevious<CR>
vmap <leader><S-TAB> <ESC>:bprevious<CR>
"--SAVE FILE///////////////
imap <C-s> <ESC>:w!<CR>
nmap <C-s> <ESC>:w!<CR>
vmap <C-s> <ESC>:w!<CR>
"--RESET EDITOR////////////
imap <C-r> <ESC>:so $HOME/.config/nvim/setup/options.vim<CR>
nmap <C-r> <ESC>:so $HOME/.config/nvim/setup/options.vim<CR>
vmap <C-r> <ESC>:so $HOME/.config/nvim/setup/options.vim<CR>

"--QUIT////////////////////
imap <C-q> <ESC>:lua Kclose_all_buffers()<CR>
nmap <C-q> <ESC>:lua Kclose_all_buffers()<CR>
vmap <C-q> <ESC>:lua Kclose_all_buffers()<CR>
"--CLOSE BUFFERS UNTIL EXPLORER//////////////////
"--WHILE I GET THE HABIT TO USE C-W AS SUBLIME TEXT
imap <A-q> <ESC>:lua Kclose_buffers()<CR>
nmap <A-q> <ESC>:lua Kclose_buffers()<CR>
vmap <A-q> <ESC>:lua Kclose_buffers()<CR>
"--NEW TAB
imap <A-t> <ESC>:tabnew<CR>
nmap <A-t> <ESC>:tabnew<CR>
vmap <A-t> <ESC>:tabnew<CR>
"--NEXT TAB
imap <A-RIGHT> <ESC>:vsplit<CR>
nmap <A-RIGHT> <ESC>:vsplit<CR>
vmap <A-RIGHT> <ESC>:vsplit<CR>
"--PREV TAB
imap <A-LEFT> <ESC>:split<CR>
nmap <A-LEFT> <ESC>:split<CR>
vmap <A-LEFT> <ESC>:split<CR>
"--REMOVE PANEL
imap <A-c> <ESC>:close<CR>
nmap <A-c> <ESC>:close<CR>
vmap <A-c> <ESC>:close<CR>
"--RESIZE RIGHT PANEL VERTICALLY
imap <leader><LEFT> <ESC>:vertical resize +5<CR>
nmap <leader><LEFT> <ESC>:vertical resize +5<CR>
vmap <leader><LEFT> <ESC>:vertical resize +5<CR>
"--RESIZE LEFT PANEL VERTICALLY
imap <leader><RIGHT> <ESC>:vertical resize -5<CR>
nmap <leader><RIGHT> <ESC>:vertical resize -5<CR>
vmap <leader><RIGHT> <ESC>:vertical resize -5<CR>
"--RESIZE DOWN PANEL HORIZONTALLY
imap <leader><UP> <ESC>:resize +5<CR>
nmap <leader><UP> <ESC>:resize +5<CR>
vmap <leader><UP> <ESC>:resize +5<CR>
"--RESIZE UP PANEL HORIZONTALLY
imap <leader><DOWN> <ESC>:resize -5<CR>
nmap <leader><DOWN> <ESC>:resize -5<CR>
vmap <leader><DOWN> <ESC>:resize -5<CR>
"--TOGGLE DARK COLOR SCHEME
imap <A-k> <ESC>:set background=dark<CR>
nmap <A-k> <ESC>:set background=dark<CR>
vmap <A-k> <ESC>:set background=dark<CR>
"--TOGGLE LIGHT COLOR SCHEME
imap <A-l> <ESC>:set background=light<CR>
nmap <A-l> <ESC>:set background=light<CR>
vmap <A-l> <ESC>:set background=light<CR>
"--DIR FILES
imap <A-f> <ESC>:Files<CR>
nmap <A-f> <ESC>:Files<CR>
vmap <A-f> <ESC>:Files<CR>
"--OPEN MINIMAP
imap <leader>mm <ESC>:MinimapToggle<CR>
nmap <leader>mm <ESC>:MinimapToggle<CR>
vmap <leader>mm <ESC>:MinimapToggle<CR>
"--CLOSE OPENED FIES
imap <C-A-d> <ESC>:bdelete 
nmap <C-A-d> <ESC>:bdelete 
vmap <C-A-d> <ESC>:bdelete 
"--MOVE UP 5 POINTS
imap <S-UP> <ESC>:-5<CR>
nmap <S-UP> <ESC>:-5<CR>
vmap <S-UP> <ESC>:-5<CR>
"--MOVE DOWN 5 POINTS
imap <S-DOWN> <ESC>:+5<CR>
nmap <S-DOWN> <ESC>:+5<CR>
vmap <S-DOWN> <ESC>:+5<CR>
"--UNDO
imap <C-z> <ESC>:undo<CR>
nmap <C-z> <ESC>:undo<CR>
vmap <C-z> <ESC>:undo<CR>
"--REDO
imap <C-y> <ESC>:redo<CR>
nmap <C-y> <ESC>:redo<CR>
vmap <C-y> <ESC>:redo<CR>
"--SELECT ALL LINES
imap <C-A-a> <ESC>G$v0gg
nmap <C-A-a> <ESC>G$v0gg
nmap <C-A-a> <ESC>G$v0gg
"--COMMENTS
imap <A-'> <ESC>:CommentToggle<CR>
nmap <A-'> :CommentToggle<CR>
vmap <A-'> :CommentToggle<CR>
"--FORMMAT INDENTATION
imap <silent><leader>fm <ESC>:KFormat<CR>
nmap <silent><leader>fm <ESC>:KFormat<CR>
vmap <silent><leader>fm <ESC>:KFormat<CR>

imap <leader>kt <ESC>:FloatermKill<CR>
nmap <leader>kt <ESC>:FloatermKill<CR>
vmap <leader>kt <ESC>:FloatermKill<CR>

imap <leader>] <ESC>:FloatermNext<CR>
nmap <leader>] <ESC>:FloatermNext<CR>
vmap <leader>] <ESC>:FloatermNext<CR>

imap <leader>[ <ESC>:FloatermPrev<CR>
nmap <leader>[ <ESC>:FloatermPrev<CR>
vmap <leader>[ <ESC>:FloatermPrev<CR>
"--ACTIVATE AUTOCOMPLETE SELECTION PRESSING ENTER IN COC
"REF: https://superuser.com/questions/1734914/neovim-coc-nvim-enter-key-doesnt-work-to-autocomplete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : compe#confirm({ 'keys': '<CR>', 'select': v:true })


