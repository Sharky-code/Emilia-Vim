local M = {}

M.toggle = function()
	if vim.g.split_tog then
		require("custom.window_temp"):show()
	else
		require("custom.window_temp"):hide()
	end
	vim.g.split_tog = not vim.g.split_tog
end

return M
