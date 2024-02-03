return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup {
				ensure_installed = { "rust", "vim", "cpp", "python", "cmake", "lua" },
				auto_install = true,
				highlight = {
					enable = true,
				}
			}
		end
	},
	"Badhi/nvim-treesitter-cpp-tools",
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup { enable = true }
		end
	},
}
