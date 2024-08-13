vim.api.nvim_create_user_command("ModLSP",
	function(opts)
		require("dependencies.modify_lsp_client_settings").detect_user_input(
				opts.fargs[0], opts.fargs[1])
	end,
	{nargs = 1}
)
