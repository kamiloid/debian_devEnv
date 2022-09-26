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


" KEY BINDINGS
" <CR>..............| edit
" o.................| edit
" <2-LeftMouse>.....| edit
" <2-RightMouse>....| cd
" <C-]>.............| cd
" <C-v>.............| vsplit
" <C-x>.............| split
" <C-t>.............| tabnew
" <.................| prev_sibling
" >.................| next_sibling
" <BS>..............| close_node
" <S-CR>............| close_node
" <Tab>.............| preview
" I.................| toggle_ignored
" H.................| toggle_dotfiles
" R.................| refresh
" a.................| create
" d.................| remove
" r.................| rename
" <C-r>.............| full_rename
" x.................| cut
" c.................| copy
" p.................| paste
" [c................| prev_git_item
" ]c................| next_git_item
" -.................| dir_up
" q.................| close
