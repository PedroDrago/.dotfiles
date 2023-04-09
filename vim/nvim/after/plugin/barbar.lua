require'barbar'.setup {
    auto_hide = true,
    animation = false,
    sidebar_filetypes = {
        NvimTree = true
    },
    icons = {
        buffer_index = true,
        [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
        [vim.diagnostic.severity.WARN] = {enabled = false},
        [vim.diagnostic.severity.INFO] = {enabled = false},
        [vim.diagnostic.severity.HINT] = {enabled = false},
    separator = {left = '|', right = '|'},
    },
}


vim.keymap.set("n", "<C-w>", ":BufferClose<CR>")

--shift+n|shift+p to move tabs
vim.keymap.set("n", "<leader><S-p>", ":BufferMovePrevious<CR>")
vim.keymap.set("n", "<leader><S-n>", ":BufferMoveNext<CR>")

vim.keymap.set("n", "<leader>1", ":BufferGoto 1<CR>")
vim.keymap.set("n", "<leader>2", ":BufferGoto 2<CR>")
vim.keymap.set("n", "<leader>3", ":BufferGoto 3<CR>")
vim.keymap.set("n", "<leader>4", ":BufferGoto 4<CR>")
vim.keymap.set("n", "<leader>5", ":BufferGoto 5<CR>")
vim.keymap.set("n", "<leader>6", ":BufferGoto 6<CR>")
vim.keymap.set("n", "<leader>7", ":BufferGoto 7<CR>")
vim.keymap.set("n", "<leader>8", ":buffergoto 8<cr>")
