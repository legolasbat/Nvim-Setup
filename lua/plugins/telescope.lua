return {
	{
		"nvim-telescope/telescope.nvim", tag = "v0.2.1",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{
				"<leader>ff",
				":Telescope find_files<CR>",
				desc = "Find files",
			},
			{
				"<leader>fg",
				":Telescope live_grep<CR>",
				desc = "Live Grep",
			}
		}
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown{}
					}
				}
			})
			require("telescope").load_extension("ui-select")
		end
	},
}
