return {
	{
		"/terrortylor/nvim-comment",
		config = function()
			require('nvim_comment').setup()
		end
	},
	{
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
