vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- able to move text when highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- make <J> stay at the beginning of the line
vim.keymap.set("n", "J", "mzJ`z")


-- makes it so that when doing page movement, cursor stays in the middle
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")


-- A Mystery keymap
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- pasting over without losing the word
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete without it in clipboard
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- copy into system clipboard
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("x", "<leader>p", [["_dP]])

--vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])


-- <Q> is such a weird command
vim.keymap.set("n", "Q", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- find and replace on the word you are on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- turn script into exe
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
