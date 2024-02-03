-- Lazy Setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)



-- Plugin List
local plugins = {
	-- > Tokyonight #001021
	"folke/tokyonight.nvim",
	-- > Treesitter #001022
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup {
				ensure_installed = {"rust", "vim", "cpp", "python", "cmake", "lua"},
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
				require("treesitter-context").setup {enable = true}
			end
		},
	"ThePrimeagen/refactoring.nvim",
	
	-- > Lsp #001023
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
                ensure_installed = {"lua_ls", "rust_analyzer", "pyright", "clangd"}
            }
        end
    },
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
    {
		"folke/neodev.nvim",
		config = function()
			require("neodev").setup()
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
			symbol_in_winbar = {enable = true}
		end
	},
	{
		"lvimuser/lsp-inlayhints.nvim",
		config = function()
			require("lsp-inlayhints").setup()
		end
	},
    "kosayoda/nvim-lightbulb",
    "RishabhRD/nvim-lsputils",
        "RishabhRD/popfix",
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
        "ray-x/guihua.lua",
    "mfussenegger/nvim-dap",
	
	-- > Autocomplete and Snippets #001024
	"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",

	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
	"michaelb/sniprun",

	-- > Aesthetics #001025
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup()
		end
	},
	"goolord/alpha-nvim",
	"nvim-lualine/lualine.nvim",
	"mrjones2014/legendary.nvim",

	-- > Dropbar #001026
	-- "Bekaboo/dropbar.nvim",  -- This plugin only works for 0.10.0, so switch to it when neovim releases
				    -- a stable release.
					
	-- > Float Terminal #001027
	"voldikss/vim-floaterm",

	-- > Asyncrun #001028
	"skywind3000/asyncrun.vim",

	-- > Telescope #001029
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

	-- > True Zen #00102a
	"pocco81/true-zen.nvim",
	{
        "folke/zen-mode.nvim",
        config = function() 
            require("zen-mode").setup {
                window = {width = 100},
                plugins = {
                    options = {enabled = true, ruler = true},
                    kitty = {enabled = true, font = "+4"}
                }
            }
        end
    },

	-- > Dap and Neotest #00102b
	"mfussenegger/nvim-dap",
	"mfussenegger/nvim-dap-python",
	"theHamsta/nvim-dap-virtual-text",
	"rcarriga/nvim-dap-ui",
	"Pocco81/DAPInstall.nvim",
	"klen/nvim-test",
	"nvim-neotest/neotest",
	"nvim-neotest/neotest-python",

	-- > Github #00102c
	"kdheepak/lazygit.nvim",
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end
	},

	-- > AI #00102d
	"Exafunction/codeium.vim",
	{
        "David-Kunz/gen.nvim",
        config = function()
            require("gen").setup{}  -- Curly bracket is necessary here
            require("gen").model = "TEST1"
            require("gen").container = "ollama"
        end
    },
	"jackMort/ChatGPT.nvim",

	-- > Misellaneous #001023
	"nvim-lua/plenary.nvim",
	"folke/which-key.nvim",
	-- "edluffy/hologram.nvim",
	{
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup()
		end
	},
	{
		"kevinhwang91/nvim-ufo",
		config = function()
			require("ufo").setup()
		end
	},
		"kevinhwang91/promise-async",
	"MunifTanjim/nui.nvim",
	-- "benlubas/wrapping-paper.nvim"  -- This is a promising plugin that I will use in the future when its fully developed
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
    },
	"rcarriga/nvim-notify",
	{
	  	"utilyre/barbecue.nvim",
	  	name = "barbecue",
	  	version = "*",
	  	dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
	    },
	  	opts = {
			-- configurations go here
		},
	}
}

-- Lazy setup
-- require("lazy").setup(plugins, {})
require("lazy").setup("plugins")  -- The latter parameter is `opts`

