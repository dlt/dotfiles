require("dlt.remap")
require("dlt.pckr")
local vim = vim

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking",
	group = vim.api.nvim_create_augroup("dlt-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})


-- settings
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- decrease update time
vim.opt.updatetime = 250

-- decrease mapped sequence wait time
--vim.opt.timeoutlen = 300


vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.cursorline = true

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message " })
vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message " })


vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking",
	group = vim.api.nvim_create_augroup("dlt-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "php",
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.expandtab = true
    vim.bo.smartindent = true
    vim.bo.autoindent = true
  end,
})


vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sql", "mysql", "plsql" },
  callback = function()
    require('cmp').setup.buffer({
      sources = {
        { name = 'vim-dadbod-completion' }
      }
    })
  end,
})

