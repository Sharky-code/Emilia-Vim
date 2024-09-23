local M = {}

M.mappings = {
	["K"] = vim.lsp.buf.hover,
	["gd"] = vim.lsp.buf.definition,
	["gi"] = vim.lsp.buf.implementation,
	["go"] = vim.lsp.buf.type_definition,
	["gr"] = vim.lsp.buf.references,
	["gs"] = vim.lsp.buf.signature_help,
	["<F2>"] = vim.lsp.buf.rename,
	["<F3>"] = vim.lsp.buf.format,
	["<F4>"] = vim.lsp.buf.code_action,
	["gl"] = vim.diagnostic.open_float,
	["[d"] = vim.diagnostic.goto_prev,
	["]d"] = vim.diagnostic.goto_next,
}

return M
