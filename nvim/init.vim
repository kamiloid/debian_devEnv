"EDITOR PROPS////////////////////////////
set number relativenumber
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set cursorline
set cursorcolumn
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set wildmenu
set title
set ttimeoutlen=0
set splitbelow splitright
set t_Co=256
filetype plugin indent on
syntax on

set encoding=UTF-8

sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=
sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=
sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=
sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=

"ITALIC FONTS/////////////////////////
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

":EXPLORER SETTINGS//////////////////
let g:netrw_banner=1
let g:netrw_liststyle=3
let g:netrw_browse_split=0
let g:netrw_altv=0
let g:netrw_winsize=25
let g:netrw_keepdir=0
let g:netrw_localcopydircmd='cp -r'

"IMPORT VIM FILES///////////////////////
source $HOME/.config/nvim/plugs/plugins.vim
source $HOME/.config/nvim/plugs/packer-plugs.vim

"COMMANDS///////////////////////////////
command! EXP :Explorer
command! KComment :CommentToggle
command! KPathFiles :Files
command! KMiniMap :MinimapToggle

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
imap <leader><TAB> <ESC>:BufferNext<CR>
nmap <leader><TAB> <ESC>:BufferNext<CR>
vmap <leader><TAB> <ESC>:BufferNext<CR>

imap <leader><S-TAB> <ESC>:BufferPrevious<CR>
nmap <leader><S-TAB> <ESC>:BufferPrevious<CR>
vmap <leader><S-TAB> <ESC>:BufferPrevious<CR>
"--SAVE FILE///////////////
imap <C-s> <ESC>:w!<CR>
nmap <C-s> <ESC>:w!<CR>
vmap <C-s> <ESC>:w!<CR>
"--RESET EDITOR////////////
imap <C-r> <ESC>:so $HOME/.config/nvim/init.vim<CR>
nmap <C-r> <ESC>:so $HOME/.config/nvim/init.vim<CR>
vmap <C-r> <ESC>:so $HOME/.config/nvim/init.vim<CR>
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
"--NVIMTREE_TOGGLE
imap <C-b> <ESC>:NvimTreeToggle<CR>
nmap <C-b> <ESC>:NvimTreeToggle<CR>
vmap <C-b> <ESC>:NvimTreeToggle<CR>
imap <C-A-b> <ESC>:NvimTreeToggle<CR>
nmap <C-A-b> <ESC>:NvimTreeToggle<CR>
vmap <C-A-b> <ESC>:NvimTreeToggle<CR>
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

"--ACTIVATE AUTOCOMPLETE SELECTION PRESSING ENTER IN COC
"REF: https://superuser.com/questions/1734914/neovim-coc-nvim-enter-key-doesnt-work-to-autocomplete
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : compe#confirm({ 'keys': '<CR>', 'select': v:true })

lua << EOF

function Kbuffer_length()
	local count = 0
	local buffers = vim.fn.bufnr('$')
	for b = 1, buffers do
		count = count + vim.fn.buflisted(b)
	end
	return count;
end

function Kclose_all_buffers()
	local count = Kbuffer_length()
	vim.cmd("KShadeOff")
	for b = 1, count do
		vim.cmd("BufferDelete!")
		vim.cmd("q!")
	end
end

function Kclose_buffers()
	local current_buffer = vim.api.nvim_get_current_buf()
	local name = vim.api.nvim_buf_get_name(current_buffer)
	local count = Kbuffer_length()
	if count > 1 then
		vim.cmd(":BufferDelete!")
		return
	end
	if name ~= '' then
		vim.api.nvim_buf_delete(0, { force })
		vim.cmd(":NvimTreeOpen")
		--vim.cmd(":Startify")
	end
end

EOF

"////AUTOCOMPLETE MENU COLOR
" You can use the following highlight groups:
" Pmenu – normal item
" PmenuSel – selected item
" PmenuSbar – scrollbar
" PmenuThumb – thumb of the scrollbar
highlight Pmenu ctermbg=gray guibg=#10414d gui=bold

"////COLOR CONFIGURATION
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" True color if available
let term_program=$TERM_PROGRAM
" Check for conflicts with Apple Terminal app
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif
set t_Co=256
source $HOME/.config/nvim/setup/colorscheme.vim
set background=dark
