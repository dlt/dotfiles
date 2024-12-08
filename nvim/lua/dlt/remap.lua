local vim = vim

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--vim.keymap.set("n", "<leader>", "PackerSync")
--
vim.keymap.set("n", "<leader>cc", ":CopilotChatCommit<CR>")
vim.keymap.set("n", "<leader>co", ":CopilotChatOpen<CR>")
vim.keymap.set("n", "<leader>ct", ":CopilotChatToggle<CR>")

vim.keymap.set("v", "<leader>ce", ":CopilotChatExplain<CR>")
vim.keymap.set("v", "<leader>cf", ":CopilotChatFix<CR>")
vim.keymap.set("v", "<leader>cd", ":CopilotChatDocs<CR>")
vim.keymap.set("v", "<leader>ctt", ":CopilotChatTests<CR>")
vim.keymap.set("v", "<leader>cr", ":CopilotChatReview<CR>")


-- Map cmd+shift+} to go to the next tab
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bn', ':tabnext<CR>', { noremap = true, silent = true })
-- Map cmd+shift+{ to go to the previous tab
vim.keymap.set('n', '<leader>bp', ':tabprevious<CR>', { noremap = true, silent = true })
