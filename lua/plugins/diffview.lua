return {
	"sindrets/diffview.nvim",
	config = function ()
		require("diffview").setup()

		vim.keymap.set("n", "<leader>gc", ":DiffviewOpen<CR>", {})
		vim.keymap.set("n", "<leader>gC", ":DiffviewClose<CR>", {})
	end
}
