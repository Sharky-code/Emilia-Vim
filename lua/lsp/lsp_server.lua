local status, lspconfig = pcall(require, "lspconfig")

if not status then
	return 0
end

