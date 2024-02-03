return {
	"neovim/nvim-lspconfig",
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup {
				ensure_installed = { "lua_ls", "rust_analyzer", "pyright", "clangd" }
			}
		end
	},
	{
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").setup()
		end
	},
	"nvim-lua/lsp-status.nvim",
	"onsails/lspkind.nvim",
	{
		"nvimdev/lspsaga.nvim",
		config = function()
			symbol_in_winbar = { enable = true }
		end
	},
	{
		"lvimuser/lsp-inlayhints.nvim",
		config = function()
			require("lsp-inlayhints").setup()
		end
	},
	"RishabhRD/nvim-lsputils",
	{
		"ray-x/navigator.lua",
		config = function()
			require("navigator").setup {
				lsp = {
					format_on_save = false,
					diagnostic = {
						underline = true,
						virtual_text = false,
						under_in_insert = false,
					},
					document_highlight = false,
					display_diagnostic_qf = false
				}
			}
		end
	},
}
