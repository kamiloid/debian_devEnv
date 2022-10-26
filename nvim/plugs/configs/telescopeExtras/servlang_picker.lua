local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local sorters = require('telescope.sorters')
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local themes = require('telescope.themes')

local style = {
	layout_strategy = "vertical",
	layout_config = {
		height = 10,
		width = 0.3,
		prompt_position = "top"
	},
	sorting_strategy = "ascending",
}

local table = {
	'Only Lsp',
	'Only Coc',
	'Both (Lsp, Coc)',
	'None',
}

function KLsp_enable()
	vim.cmd('CocDisable')
	vim.cmd('LspStart')
	vim.cmd("KCompeEnable")
	vim.cmd("inoremap <silent><expr> <CR> compe#confirm({ 'keys': '<CR>', 'select': v:true })")
end

function KCoc_enable()
	vim.cmd('LspStop')
	vim.cmd('CocEnable')
	vim.cmd("KCompeDisable")
	vim.cmd("source $HOME/.config/nvim/plugs/configs/coc_conf.vim")
	vim.cmd("inoremap <silent><expr> <CR> coc#pum#confirm()")
end

function KLsp_Coc_enable()
	vim.cmd('CocEnable')
	vim.cmd('LspStart')
	vim.cmd("KCompeEnable")
	vim.cmd("source $HOME/.config/nvim/plugs/configs/coc_conf.vim")
	vim.cmd("inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : compe#confirm({ 'keys': '<CR>', 'select': v:true })")
end

function KLsp_Coc_none()
	vim.cmd('CocDisable')
	vim.cmd('LspStop')
	vim.cmd("KCompeDisable")
	vim.cmd("inoremap <silent><expr> <CR>")
end

local values = {}
values[1] = KLsp_enable
values[2] = KCoc_enable
values[3] = KLsp_Coc_enable
values[4] = KLsp_Coc_none

function slpicker_enter(prompt_bufnr)
	local selected = action_state.get_selected_entry()
	local value = values[selected['index']]
	actions.close(prompt_bufnr)
	value()
end

function slpicker_reset(prompt_bufnr)
	actions.close(prompt_bufnr)
end

function slpicker_next(prompt_bufnr)
	actions.move_selection_next(prompt_bufnr)
end

function slpicker_prev(prompt_bufnr)
	actions.move_selection_previous(prompt_bufnr)
end

local options = {
	finder = finders.new_table(table),
	sorter = sorters.get_generic_fuzzy_sorter({}),
	attach_mappings = function(prompt_bufnr, map)
		map('i', '<CR>', slpicker_enter)
		map('i', '<UP>', slpicker_prev)
		map('i', '<DOWN>', slpicker_next)
		map('i', '<ESC>', slpicker_reset)

		map('n', '<CR>', slpicker_enter)
		map('n', '<UP>', slpicker_prev)
		map('n', '<DOWN>', slpicker_next)
		map('n', '<ESC>', slpicker_reset)
		return true
	end
}

local dropdown = themes.get_dropdown(style)
local fterminals = pickers.new(dropdown, options)
fterminals:find()
