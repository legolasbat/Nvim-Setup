return {
	{
		"jay-babu/mason-nvim-dap.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		opts = {
			handlers = {}
		},
	},
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},
		config = function ()
			local dap = require("dap")
			local dapui = require("dapui")

			dapui.setup()

			dap.listeners.before.attach.dapui_config = function ()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function ()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function ()
				dapui.open()
			end
			dap.listeners.before.event_exited.dapui_config = function ()
				dapui.open()
			end

			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Debugger Toggle Breakpoint" })
			vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Debugger Continue" })
		end,
	}
}
