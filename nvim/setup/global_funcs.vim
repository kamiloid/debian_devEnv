
lua << EOF

function Kbuffer_length()
	local count = 0
	local buffers = vim.fn.bufnr('$')
	for b = 1, buffers do
		count = count + vim.fn.buflisted(b)
	end
	return count;
end

function Kclose_all_buffers()
	local count = Kbuffer_length()
	vim.cmd("KShadeOff")
	for b = 1, count do
		--vim.cmd("BufferDelete!")
		vim.cmd("BufferDelete")
		vim.cmd("q!")
	end
	vim.cmd("q!")
end

function Kclose_buffers()
	local current_buffer = vim.api.nvim_get_current_buf()
	local name = vim.api.nvim_buf_get_name(current_buffer)
	local count = Kbuffer_length()
	if count > 1 then
		--vim.cmd(":BufferDelete!")
		vim.cmd("KShadeOff")
		vim.cmd("BufferDelete")
		vim.cmd("KShadeOn")
		return
	end
	if name ~= '' then
		vim.api.nvim_buf_delete(0, { force })
		vim.cmd(":NvimTreeOpen")
		--vim.cmd(":Startify")
	end
end

EOF


