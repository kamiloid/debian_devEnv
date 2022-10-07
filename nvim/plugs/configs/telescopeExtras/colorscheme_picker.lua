local pickers = require 'telescope.pickers'
local finders = require 'telescope.finders'
local sorters = require 'telescope.sorters'
local themes = require 'telescope.themes'
local actions = require 'telescope.actions'
local action_state = require 'telescope.actions.state'
local colorschemes_buffer = vim.fn.getcompletion('', 'color')

local current_scheme = vim.g.colors_name

function cspicker_reset(prompt_bufnr)
	local selected = action_state.get_selected_entry()
	local cmd = 'colorscheme ' .. current_scheme
	vim.cmd(cmd)
	actions.close(prompt_bufnr)
end

function cspicker_enter(prompt_bufnr)
	local selected = action_state.get_selected_entry()
	local cmd = 'colorscheme ' .. selected[1]
	local init = vim.fn.expand('$HOME/.config/nvim/setup/colorscheme.vim')
	vim.fn.jobstart('echo '..cmd..' > '..init)
	actions.close(prompt_bufnr)
end

function cspicker_next(prompt_bufnr)
	actions.move_selection_next(prompt_bufnr)
	local selected = action_state.get_selected_entry()
	local cmd = 'colorscheme ' .. selected[1]
	vim.cmd(cmd)
end

function cspicker_prev(prompt_bufnr)
	actions.move_selection_previous(prompt_bufnr)
	local selected = action_state.get_selected_entry()
	local cmd = 'colorscheme ' .. selected[1]
	vim.cmd(cmd)
end

local style = {
	layout_strategy = "vertical",
	layout_config = {
		height = 10,
		width = 0.3,
		prompt_position = "top"
	},
	sorting_strategy = "ascending",
}

local options = {
	finder = finders.new_table(colorschemes_buffer),
	sorter = sorters.get_generic_fuzzy_sorter({}),
	attach_mappings = function(prompt_bufnr, map)
		map('i', '<CR>', cspicker_enter)
		map('i', '<UP>', cspicker_prev)
		map('i', '<DOWN>', cspicker_next)
		map('i', '<ESC>', cspicker_reset)

		map('n', '<CR>', cspicker_enter)
		map('n', '<UP>', cspicker_prev)
		map('n', '<DOWN>', cspicker_next)
		map('n', '<ESC>', cspicker_reset)
		return true
	end
}

local dropdown = themes.get_dropdown(style)
local colors = pickers.new(dropdown, options)
colors:find()
