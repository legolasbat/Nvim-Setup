return {
	"mason-org/mason-lspconfig.nvim",
	opts = {},
	dependencies =
	{
		{
			"mason-org/mason.nvim",
			opts = {
				ensure_installed = {
					"lua_ls",
					"codelldb",
				}
			}
		},
		{
			"neovim/nvim-lspconfig",
			config = function()
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Get Documentation" })
				vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
				vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Get References" })
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
				vim.api.nvim_create_autocmd({"BufWritePre"}, {
					pattern = { "*.cpp", "*.hpp", "*.c", "*.h" },
					callback = function()
						vim.lsp.buf.format()
					end,
				})
			end
		},
	},
}
