lua << EOF

function active_telescope_yanks()
	require('telescope').load_extension('neoclip')
	vim.cmd("Telescope neoclip")
end

function active_telescope_macros()
	require('telescope').load_extension('macroscope')
	vim.cmd("Telescope macroscope")
end

function run_neoclip()
	require('neoclip').start()
end

function stop_neoclip()
	require('neoclip').stop()
end

require('neoclip').setup({
      history = 1000,
      enable_persistent_history = false,
      length_limit = 1048576,
      continuous_sync = false,
      db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
      filter = nil,
      preview = true,
      prompt = nil,
      default_register = '"',
      default_register_macros = 'q',
      enable_macro_history = true,
      content_spec_column = false,
      on_paste = {
        set_reg = false,
      },
      on_replay = {
        set_reg = false,
      },
      keys = {
        telescope = {
          i = {
            select = '<leader><cr>',
			paste = '<cr>',
            paste_behind = '<c-k>',
            replay = '<c-q>',  -- replay a macro
            delete = '<c-d>',  -- delete an entry
            custom = {},
          },
          n = {
            select = '<leader><cr>',
            paste = '<cr>',
            --- It is possible to map to more than one key.
            -- paste = { 'p', '<c-p>' },
            paste_behind = 'P',
            replay = 'q',
            delete = 'd',
            custom = {},
          },
        },
        fzf = {
          select = 'default',
          paste = 'ctrl-p',
          paste_behind = 'ctrl-k',
          custom = {},
        },
      },
    })

EOF

command! KYanks :lua active_telescope_yanks()
command! KMacros :lua active_telescope_macros()
command! KYanksStart :lua run_neoclip()
command! KYanksStop :lua stop_neoclip()
