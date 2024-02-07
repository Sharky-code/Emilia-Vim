return {
	{
		"epwalsh/obsidian.nvim",
		config = function()
			require("obsidian").setup {
				workspaces = {
					{
						name = "Everything Everywhere All Emilia",
						path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Ryo Church",
					},
				},
			}
		end
	}
}
