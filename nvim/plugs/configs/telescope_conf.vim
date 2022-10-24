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
		diagnostics = {theme = "ivy"},
		treesitter = {theme = "ivy"},
		live_grep = {theme = "ivy"},
		help_tags = { theme = "ivy", layout_config = {vertical = {width = 0.9}}}
	},
	extensions = {
    repo = {
      list = {
        fd_opts = {
          "--no-ignore-vcs",
        },
        search_dirs = {
          "~/my_projects",
        },
      },
    },
	packer = {
		theme = "ivy",
		layout_config = {
			height = .5
		}
	},
	lsp_handlers = {
		disable = {},
		location = {
			telescope = {},
			no_results_message = 'No references found',
		},
		symbol = {
			telescope = {},
			no_results_message = 'No symbols found',
		},
		call_hierarchy = {
			telescope = {},
			no_results_message = 'No calls found',
		},
		code_action = {
			telescope = {},
			no_results_message = 'No code actions available',
			prefix = '',
		},
	}
  },
}

function load_telescope_repo()
	require('telescope').load_extension 'repo'
	vim.cmd('Telescope repo')
end

function load_telescope_ports()
	require('telescope').load_extension('ports')
	vim.cmd('Telescope ports')
	-- mapping: C-k kill processes
end

function load_telescope_packer()
	require("telescope").load_extension "packer"
	require('telescope').extensions.packer.packer(opts)
	vim.cmd('Telescope packer')
	-- <C-o>	Open online repository
end

function load_telescope_project()
	require'telescope'.load_extension('project')
	vim.cmd('Telescope project')

	--Default mappings (normal mode):
	--Key	Description
	--d	delete currently selected project
	--r	rename currently selected project
	--c	create a project*
	--s	search inside files within your project
	--b	browse inside files within your project
	--w	change to the selected project's directory without opening it
	--R	find a recently opened file within your project
	--f	find a file within your project (same as <CR>)

	--Default mappings (insert mode):
	--Key	Description
	--<c-d>	delete currently selected project
	--<c-v>	rename currently selected project
	--<c-a>	create a project*
	--<c-s>	search inside files within your project
	--<c-b>	browse inside files within your project
	--<c-l>	change to the selected project's directory without opening it
	--<c-r>	find a recently opened file within your project
	--<c-f>	find a file within your project (same as <CR>)

	--Workspace mappings (insert mode):
	--Key	Description
	--<c-w>	change workspace
end

EOF

"--COMMANDS
command! KStoric :Telescope jumplist
command! KSymbDoc :Telescope lsp_document_symbols
command! KRefs :Telescope lsp_references
command! KKeyMaps :Telescope keymaps
command! KTerminalCmds :Telescope man_pages
command! KOldFiles :Telescope oldfiles
command! KHelp :Telescope help_tags
command! KDiagnostics :Telescope diagnostics
command! KSymbols :Telescope treesitter
command! KSearchText :Telescope live_grep
command! KGitRepos :lua load_telescope_repo()
command! KPorts :lua load_telescope_ports()
command! KPacker :lua load_telescope_packer()
command! KProject :lua load_telescope_project()

" command! KColorSchemes :lua require('plugs.configs.telescopeExtras.colorscheme_picker').run()
command! KColorSchemes :luafile $HOME/.config/nvim/plugs/configs/telescopeExtras/colorscheme_picker.lua
command! KTerminal :luafile $HOME/.config/nvim/plugs/configs/telescopeExtras/float_terminals.lua

""--KEY MAPS
imap <leader>sp <ESC>:Telescope spell_suggest<CR>
nmap <leader>sp <ESC>:Telescope spell_suggest<CR>
vmap <leader>sp <ESC>:Telescope spell_suggest<CR>

imap <leader>5 <ESC>:Telescope spell_suggest<CR>
nmap <leader>5 <ESC>:Telescope spell_suggest<CR>
vmap <leader>5 <ESC>:Telescope spell_suggest<CR>

imap <C-A-l> <ESC>:Telescope buffers<CR>
nmap <C-A-l> <ESC>:Telescope buffers<CR>
vmap <C-A-l> <ESC>:Telescope buffers<CR>

imap <leader>2 <ESC>:Telescope buffers<CR>
nmap <leader>2 <ESC>:Telescope buffers<CR>
vmap <leader>2 <ESC>:Telescope buffers<CR>

imap <C-f> <ESC>:Telescope find_files<CR>
nmap <C-f> <ESC>:Telescope find_files<CR>
vmap <C-f> <ESC>:Telescope find_files<CR>

imap <leader>ff <ESC>:Telescope find_files<CR>
nmap <leader>ff <ESC>:Telescope find_files<CR>
vmap <leader>ff <ESC>:Telescope find_files<CR>

imap <leader>4 <ESC>:Telescope find_files<CR>
nmap <leader>4 <ESC>:Telescope find_files<CR>
vmap <leader>4 <ESC>:Telescope find_files<CR>

imap <leader>st <ESC>:Telescope live_grep<CR>
nmap <leader>st <ESC>:Telescope live_grep<CR>
vmap <leader>st <ESC>:Telescope live_grep<CR>

imap <leader>3 <ESC>:Telescope live_grep<CR>
nmap <leader>3 <ESC>:Telescope live_grep<CR>
vmap <leader>3 <ESC>:Telescope live_grep<CR>

