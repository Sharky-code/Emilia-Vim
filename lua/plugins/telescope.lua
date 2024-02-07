return {
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("telescope").setup {
				defaults = {
					layout_strategy = "vertical",
					layout_config = {}
				},
				extensions = {
					file_browser = {
						hijack_netrw = true
					}
				}
			}
		end
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		config = function()
			require("telescope").load_extension("file_browser")
		end
	},
	"debugloop/telescope-undo.nvim",
}
