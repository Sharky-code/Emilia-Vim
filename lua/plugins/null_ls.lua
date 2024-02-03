return {
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("null-ls").setup {
				sources = {
					require("null-ls").builtins.formatting.black,
					require("null-ls").builtins.formatting.stylua
				}
			}
		end
	},
}
