--
-- initialize lsp servers
--

local lspconfig = require("lspconfig")
local null_ls = require("null-ls")
local config = require("getchoo.lsp.config")

require("mason").setup()
require("mason-lspconfig").setup(config.mason_lsp)
require("mason-tool-installer").setup(config.mason_tool_installer)
vim.opt.runtimepath:append("~/.local/share/nvim/mason/bin/")

for server, settings in pairs(config.lsp_servers) do
	lspconfig[server].setup(require("coq").lsp_ensure_capabilities(settings))
end

null_ls.setup(config.null_ls)