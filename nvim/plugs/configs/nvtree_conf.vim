lua << EOF

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

let g:nvim_tree_indent_markers=1
