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

-- set enter to confirm LSP completion
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  },
  -- sources = {
  --     name = "buffer",
  --     max_item_count = 1
  -- }
})

-- vim.g.pumheight = 10

lsp.setup()
