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

-- Toggle Diagnostic of LSP
local diagnostics_active = true
vim.keymap.set('n', '<leader>l', function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.diagnostic.show()
  else
    vim.diagnostic.hide()
  end
end)



-- vim.keymap.set("n", "<leader>l", ":LspToggle<CR>")



















lsp.setup()
