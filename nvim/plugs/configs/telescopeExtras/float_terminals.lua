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
	'New tab',
	'Split right',
	'Split down',
	'Centered expanded',
	'Bottom Right',
	'Top Right',
	'Bottom expanded'
}

local values = {
	':terminal',
	':vsplit | :terminal',
	':split | :terminal',
	':FloatermNew! --width=0.9 --height=0.9',
	':FloatermNew! --width=0.3 --height=0.3 --position=bottomright',
	':FloatermNew! --width=0.3 --height=0.3 --position=topright',
	':FloatermNew! --width=0.9 --height=0.25 --position=bottom'
}

function ftpicker_enter(prompt_bufnr)
	local selected = action_state.get_selected_entry()
	local value = values[selected['index']]
	local cmd = value
	actions.close(prompt_bufnr)
	vim.cmd(cmd)
end

function ftpicker_reset(prompt_bufnr)
	actions.close(prompt_bufnr)
end

function ftpicker_next(prompt_bufnr)
	actions.move_selection_next(prompt_bufnr)
end

function ftpicker_prev(prompt_bufnr)
	actions.move_selection_previous(prompt_bufnr)
end

local options = {
	finder = finders.new_table(table),
	sorter = sorters.get_generic_fuzzy_sorter({}),
	attach_mappings = function(prompt_bufnr, map)
		map('i', '<CR>', ftpicker_enter)
		map('i', '<UP>', ftpicker_prev)
		map('i', '<DOWN>', ftpicker_next)
		map('i', '<ESC>', ftpicker_reset)

		map('n', '<CR>', ftpicker_enter)
		map('n', '<UP>', ftpicker_prev)
		map('n', '<DOWN>', ftpicker_next)
		map('n', '<ESC>', ftpicker_reset)
		return true
	end
}

local dropdown = themes.get_dropdown(style)
local fterminals = pickers.new(dropdown, options)
fterminals:find()
