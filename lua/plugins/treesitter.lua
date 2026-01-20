return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = function()
		local config = require("nvim-treesitter.config")

		config.setup({
			ensure_isntalled = { "c", "cpp", "lua" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
