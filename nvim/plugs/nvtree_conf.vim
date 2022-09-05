lua << EOF

-- examples for your init.lua

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
	side = 'right',
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
	signcolumn = "yes"
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

EOF

