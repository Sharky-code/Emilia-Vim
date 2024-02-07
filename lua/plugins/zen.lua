return {
	"pocco81/true-zen.nvim",
	{
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup {
				window = { width = 100 },
				plugins = {
					options = { enabled = true, ruler = true },
					kitty = { enabled = true, font = "+4" }
				}
			}
		end
	},
}
