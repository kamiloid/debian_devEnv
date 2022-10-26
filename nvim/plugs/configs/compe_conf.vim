
lua << EOF


vim.o.completeopt = "menuone,noselect"

require("lsp-format").setup {
	yaml = { tab_width = 4 },
	npm = { tab_width = 4 }
}

local compe_config ={
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    border = "rounded", -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}


require'compe'.setup(compe_config) 

function KCompe_Enable()
	require('compe').setup(compe_config)
end

function KCompe_Disable()
	require('compe').setup({enable = false})
end

function KCompe_Toogle()
	if require('compe.config')._config.enable then
		require('compe').setup({enable = false})
	else
		require('compe').setup(compe_config)
	end
end

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "compe#confirm({ 'keys': '<CR>', 'select': v:true })", {expr = true})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local on_attach = function(client)
    require("lsp-format").on_attach(client)
end


--SERVERS
require'lspconfig'.tsserver.setup{on_attach = on_attach, capabilities = capabilities}
require'lspconfig'.cssmodules_ls.setup{on_attach = on_attach, capabilities = capabilities}
require'lspconfig'.cssls.setup{on_attach = on_attach, capabilities = capabilities}
require'lspconfig'.html.setup{on_attach = on_attach, capabilities = capabilities}
--require'lspconfig'.gdscript.setup{}
require'lspconfig'.eslint.setup{on_attach = on_attach, capabilities = capabilities}
require'lspconfig'.jsonls.setup{on_attach = on_attach, capabilities = capabilities}
require'lspconfig'.sqlls.setup{on_attach = on_attach, capabilities = capabilities}
require'lspconfig'.vimls.setup{on_attach = on_attach, capabilities = capabilities}
--require'lspconfig'.phpactor.setup{}

require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

EOF

command! KCompeEnable :lua KCompe_Enable()
command! KCompeDisable :lua KCompe_Disable()
command! KCompeToggle :lua KCompe_Toogle()
