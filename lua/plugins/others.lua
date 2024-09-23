return {
	{
		"grapp-dev/nui-components.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim"
		}
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		config = function()
			require"neo-tree".setup {
				source_selector = {
					winbar = true,
					statusline = false
				}
			}
		end
	}
}
