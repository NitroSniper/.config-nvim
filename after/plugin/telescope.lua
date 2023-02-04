local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
local opts = {jump_type = "vsplit"}
-- vim.keymap.set('n', 'gd', function() builtin.lsp_definitions ({jump_type = "vsplit"}) end)
-- vim.keymap.set('n', 'gtd', builtin.lsp_type_definitions, {})

