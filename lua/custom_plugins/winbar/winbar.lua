local M = {}

local status, navic = pcall(require, "nvim-navic")

if not status then
	return 0
end

M.update_winbar = function ()
	local opts = {
		sep = ">",
		space = " ",
	}

	-- navic.is_available can be omitted
	vim.opt.winbar = vim.fn.expand("%:t") .. opts.space .. opts.sep ..
	opts.space .. navic.get_location()
end

-- On startup
M.update_winbar()

return M
