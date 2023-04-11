-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFocus)

vim.keymap.set("n", "<C-Left>", ":NvimTreeResize -3<CR>")
vim.keymap.set("n", "<C-Right>", ":NvimTreeResize +3<CR>")

local api = require('nvim-tree.api')


--:h nvim-tree (DEFAULT MAPPINGS 6.1 [ON_ATTACH])
vim.keymap.set('n', '<leader>n', api.fs.create)
