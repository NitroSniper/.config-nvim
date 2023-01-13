vim.keymap.set("i", "<C-w>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_no_tab_map = true
vim.g.copilot_enabled = false
-- create keymap to suggest completions with copilot using <C-q>
vim.keymap.set("i", "<C-q>", 'copilot#Suggest()', { silent = true, expr = true })
-- q: what is 1 + 1 = 2


