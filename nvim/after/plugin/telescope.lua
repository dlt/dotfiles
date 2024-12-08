local vim = vim
local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.setup({
	find_files = { hidden = true }
})

local find_command =  ':lua require"telescope.builtin".find_files({ find_command = {"rg", "--files", "--no-ignore", "--hidden"}})<CR>'

vim.keymap.set('n', '<leader>ff', find_command, {noremap=true, silent=true})
vim.keymap.set('n', '<leader><leader>', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>ps', function ()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
