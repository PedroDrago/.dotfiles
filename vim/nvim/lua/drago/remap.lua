vim.g.mapleader = " "

--Move a selected block up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--control+s to save and leader+q to quit
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<C-s>", vim.cmd.w)

--renaming all occurrences of current 
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--auto transforms script into executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--leader+h focus on last focused window
vim.keymap.set("n", "<leader>h" ,"<c-w><c-p>")
