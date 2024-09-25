local M = {}

local status, navic = pcall(require, "nvim-navic")
local augroup = vim.api.nvim_create_augroup("Winbar", { clear = true })

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

M.main = function ()
	print("Hello! Winbar")
end


M.setup = function ()
M.update_winbar()
	vim.api.nvim_create_autocmd("CursorMoved", {
		group = augroup,
		callback = function ()
			M.update_winbar()
		end,
		callback = M.main
	})
end

return M
