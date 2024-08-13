return {
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local status, cmp = pcall(require, "cmp")
			if status then
				cmp.setup{
					snippet = {
						expand = function(args)
							require('luasnip').lsp_expand(args.body)
						end,
					},
					mapping = {
						['<Tab>'] = function(fallback)
							if cmp.visible() then
								cmp.select_next_item()
							else
								fallback()
							end
						end,
						['<C-b>'] = cmp.mapping.scroll_docs(-4),
						['<C-f>'] = cmp.mapping.scroll_docs(4),
						['<Esc>'] = cmp.mapping.abort(),
						['<CR>'] = cmp.mapping.confirm({ select = false }), 
					},
					sources = cmp.config.sources({
						{ name = "nvim_lsp" },
						{ name = "luasnip" },
					}, {
						{ name = "buffer" }
					})
				}
			end
		end
	},
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path"
}

