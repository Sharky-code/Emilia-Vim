vim.cmd [[
	augroup Plugin
		au CursorMoved * lua require"ui.winbar".update_winbar()
	augroup END

	au Filetype text,markdown lua require("cmp").setup.buffer { enabled = false }
]]

