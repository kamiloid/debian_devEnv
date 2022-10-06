lua << EOF

require("telescope").setup{
	defaults ={
		layout_config = {
          vertical = {
            height = 0.9,
            preview_cutoff = 40,
            prompt_position = "bottom",
            width = 0.8
          }
		}
	},
	pickers = {
		keymaps = {
			theme = "ivy"
		},
		man_pages = {
			theme = "ivy"
		},
		oldfiles = {
			theme = "ivy"
		},
		find_files = {
			theme = "ivy"
		},
		buffers = {
			theme = "dropdown"
		},
		colorscheme = {
			theme = "dropdown"
		},
		jumplist = {theme = "ivy"},
		spell_suggest = {theme = "cursor"},
		lsp_references = {theme = "ivy"},
		lsp_document_symbols = {theme = "ivy"},
		help_tags = { theme = "ivy", layout_config = {vertical = {width = 0.9}}}
	},
	extensions ={}
}

EOF

command! KStoric :Telescope jumplist
command! KSymbDoc :Telescope lsp_document_symbols
command! KRefs :Telescope lsp_references
command! KKeyMaps :Telescope keymaps
command! KTerminalCmds :Telescope man_pages
command! KOldFiles :Telescope oldfiles
command! KHelp :Telescope help_tags

imap <leader>sp <ESC>:Telescope spell_suggest<CR>
nmap <leader>sp <ESC>:Telescope spell_suggest<CR>
vmap <leader>sp <ESC>:Telescope spell_suggest<CR>

imap <C-A-l> <ESC>:Telescope buffers<CR>
nmap <C-A-l> <ESC>:Telescope buffers<CR>
vmap <C-A-l> <ESC>:Telescope buffers<CR>

imap <C-A-e> <ESC>:Telescope find_files<CR>
nmap <C-A-e> <ESC>:Telescope find_files<CR>
vmap <C-A-e> <ESC>:Telescope find_files<CR>

imap <leader>ff <ESC>:Telescope find_files<CR>
nmap <leader>ff <ESC>:Telescope find_files<CR>
vmap <leader>ff <ESC>:Telescope find_files<CR>
