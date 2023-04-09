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
DIAGNOSTICS_ACTIVE = true
DIAGNOSTIC_STRING = true
vim.keymap.set('n', '<leader>l', function()
  DIAGNOSTICS_ACTIVE = not DIAGNOSTICS_ACTIVE
  if DIAGNOSTICS_ACTIVE then
    vim.diagnostic.show()
    DIAGNOSTIC_STRING = "LSP: On"
  else
    DIAGNOSTIC_STRING = "LSP: Off"
    vim.diagnostic.hide()
  end
end)


-- vim.keymap.set("n", "<leader>l", ":LspToggle<CR>")



















lsp.setup()
