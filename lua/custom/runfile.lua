local M = {}

M.main = function()
	local ft = vim.bo.filetype
	local opts = "-mode=term -pos=bottom -rows=10 -raw -save=1"

	if ft == "python" then
		vim.cmd(":AsyncRun " .. opts .. " /usr/bin/python3 '$(VIM_FILEPATH)'")
	elseif ft == "cpp" then
		vim.cmd(":AsyncRun " .. opts .. " g++ -std=c++20 '$(VIM_FILEPATH)' -o '$(VIM_PATHNOEXT)'; ./'$(VIM_FILENOEXT)'")
	elseif ft == "rust" then
		vim.cmd(":AsyncRun " .. opts .. " rustc '$(VIM_FILEPATH)'; ./'$(VIM_FILENOEXT)'")
	end
end

return M
