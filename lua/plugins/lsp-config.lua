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
				vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
				vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
				vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
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
