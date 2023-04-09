local lsp = require('lsp-zero').preset({})

lsp.preset("recommended")

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.ensure_installed({
    'clangd',
    'omnisharp',
    'cssls',
    'dockerls',
    'html',
    'jsonls',
    'tsserver',
    'lua_ls',
    'marksman',
    'pyright',
    'solargraph',
    'sqlls',
})

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})


-- Currently useless, but someday i figure out how to use this to display LSP name, maybe looking on lunarvim configurations
local buf_clients = vim.lsp.buf_get_clients()
for _, client in pairs(buf_clients) do
    CURRENT_LSP = client.name
end


-- Toggle Diagnostic of LSP
DIAGNOSTICS_ACTIVE = true
DIAGNOSTIC_STRING = "On"
vim.keymap.set('n', '<leader>l', function()
  DIAGNOSTICS_ACTIVE = not DIAGNOSTICS_ACTIVE
  if DIAGNOSTICS_ACTIVE then
        DIAGNOSTIC_STRING = "On"
    vim.diagnostic.show()
  else
      DIAGNOSTIC_STRING = "Off"
    vim.diagnostic.hide()
  end
end)




















lsp.setup()
