local dap = require("dap")
local dapui = require("dapui")

dapui.setup()
require('dap-ruby').setup()

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

local function debug_ruby()
				vim.fn.setenv("RUBYOPT", "-rdebug/open")
				dap.continue()
end

vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
vim.keymap.set("n", "<leader>dc", dap.continue, {})

vim.keymap.set("n", "<leader>do", function()
	dapui.open()
end)

vim.keymap.set("n", "<leader>dx", function()
	dapui.close()
end)

vim.keymap.set("n", "<leader>dr>", function()
				debug_ruby()
end)
