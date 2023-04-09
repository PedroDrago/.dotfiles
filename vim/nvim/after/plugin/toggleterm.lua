require("toggleterm").setup{




}


vim.keymap.set("n", "<leader>t", ":ToggleTerm dir=pwd direction=float <CR>")
vim.keymap.set("n", "<leader>v", ":ToggleTerm size=100 dir=pwd direction=vertical <CR>")
