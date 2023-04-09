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

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
-- vim.keymap.set("n", "<leader>g", vim.cmd.NvimTreeFocus)

vim.keymap.set("n", "<C-Left>", ":NvimTreeResize -3<CR>")
vim.keymap.set("n", "<C-Right>", ":NvimTreeResize +3<CR>")
