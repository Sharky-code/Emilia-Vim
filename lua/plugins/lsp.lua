return {
	{
		"neovim/nvim-lspconfig",
	},
	-- Mason
	{
		"williamboman/mason.nvim",
		config = function()
			local status, mason = pcall(require, "mason")
			if status then
				mason.setup()
			end
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local status, mason_lsp = pcall(require, "mason-lspconfig")
			if status then
				mason_lsp.setup {
					ensure_installed = {
						"clangd"
					}
				}
				mason_lsp.setup_handlers {
					function (server_name)
						require("lspconfig")[server_name].setup {}
					end
				}
			end
		end
	},
	-- Luasnip
	{
		"L3MON4D3/LuaSnip"
	},
	{
		"ray-x/lsp_signature.nvim",
		config = function()
			local status, lsp_s = pcall(require, "lsp_signature")
			if status then
				lsp_s.setup()
			end
		end
	}
}
