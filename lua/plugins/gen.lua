return {
	{
		"David-Kunz/gen.nvim",
		config = function()
			require("gen").setup {} -- Curly bracket is necessary here
			require("gen").model = "TEST1"
			require("gen").container = "ollama"
		end
	},
}
