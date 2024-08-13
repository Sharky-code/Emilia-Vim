local status, lspconfig = pcall(require, "lspconfig")

if not status then
	return 0
end

local M = {}

local function modify_clangd_settings(version)
	local clients = vim.lsp.get_active_clients()
	for _, client in ipairs(clients) do
		if client.name == client then
			client.config.cmd = {
				"clangd",
				version
			}
			client.notify("workspace/didChangeConfiguration", {})
            vim.lsp.stop_client(client.id)
            lspconfig.clangd.setup(client.config)
		end
	end
end

function M.detect_user_input(arg)
	--[[
	local a = {
		clangd = modify_clangd_settings
	}
	a[opt](setting)
	]]
end

return M
