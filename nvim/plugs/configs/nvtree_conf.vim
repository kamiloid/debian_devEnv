let g:nvim_tree_indent_markers = 1

lua << EOF

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = false,
	height = 15,
	side = 'bottom',
	centralize_selection = true,
	number = false,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
	signcolumn = "yes",
	float = {
		enable = true,
		open_win_config = {
			relative = "editor",
			anchor = "NE",
			border = "rounded",
			width = 50,
			height = 30,
			row = 100 - 1,
			col = 200 - 1
		}
	},
  },
  renderer = {
	highlight_opened_files = "all",
	root_folder_modifier = ":p:."
  },
  filters = {
    dotfiles = true,
  },
})

EOF

