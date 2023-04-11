-- require("drago.remap")
require("drago.set")
require("drago.remap")

--fix tmux color issues with vim
-- vim.o.termguicolors = true
-- vim.cmd'colorscheme onedark'

-- This allways source packer.lua on startup. It makes packer don't bug
vim.cmd([[ so ~/.config/nvim/lua/drago/packer.lua ]])

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
