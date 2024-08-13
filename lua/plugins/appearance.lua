return {
	"xiyaowong/transparent.nvim",
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			local status, ts = pcall(require, "nvim-treesitter.configs")
			if status then
				ts.setup {
					ensure_installed = {
						"c",
						"lua",
						"vim",
						"vimdoc",
						"cpp",
						"java",
						"python"
					}
				}
			end
		end
	},
	{
		"SmiteshP/nvim-navic",
		config = function()
			local status, navic = pcall(require, "nvim-navic")
			if status then
				navic.setup {
					lsp = {
						auto_attach = true
					},
					highlight = true,
				}
			end
		end
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			local status, ibl = pcall(require, "ibl")
			if status then
				ibl.setup()
			end
		end
	}
}
