vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.number=true

vim.opt.smartindent=true

require("config.lazy")

vim.lsp.enable({ "clangd" })

local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("clangd", {
	capabilities = capabilities
})

vim.diagnostic.config({ virtual_text = true, signs = true })

