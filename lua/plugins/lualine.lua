return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-teee/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula"
			}
		})
	end
}
