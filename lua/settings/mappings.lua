local sep = ": "

local mappings = {
	lsp = {
		str = "LSP",
		{ map = "K", str = "Hover", func = vim.lsp.buf.hover },
		{ map = "gd", str = "Definition", func = vim.lsp.buf.definition },
		{ map = "gi", str = "Implementation", func = vim.lsp.buf.implementation },
		{ map = "go", str = "Type Definition", func = vim.lsp.buf.type_definition },
		{ map = "gr", str = "References", func = vim.lsp.buf.references },
		{ map = "gs", str = "Signature Help", func = vim.lsp.buf.signature_help },
		{ map = "<F2>", str = "Rename", func = vim.lsp.buf.rename },
		{ map = "<F3>", str = "Format Document", func = vim.lsp.buf.format },
		{ map = "<F4>", str = "Code Action", func = vim.lsp.buf.code_action },
		diagnostic = {
			{ map = "gl", str = "Open Float", func = vim.diagnostic.open_float },
			{ map = "[d", str = "Go to Previous", func = vim.diagnostic.goto_prev },
			{ map = "]d", str = "Go to Next", func = vim.diagnostic.goto_next },
		}
	}
}


function table.contains(tabl, element)
	for _, value in pairs(tabl) do
		if value == element then
			return true
		end
	end
	return false
end

function table.get_keys(tabl)
	local keys = {}
	for k, _ in pairs(tabl) do
		if k ~= nil then
			table.insert(keys, k)
		end
	end
	return keys
end

local function mapping_set_key(t)
	setmetatable(t, { __index = { mode = "n" } })
	local key, func, mode =
		t[1] or t.key,
		t[2] or t.func,
		t[3] or t.mode

	vim.keymap.set(mode, key, func)
end


local function mapping_iterate(tabl)
	for k, v in pairs(tabl) do
		local keys = table.get_keys(tabl)

		if type(v) == "table" and k ~= nil then
			mapping_iterate(v)
			goto continue
		end

		if table.contains(keys, "map") then
			local map, func = tabl["map"], tabl["func"]
			assert(map ~= nil and func ~= nil, "Map or Func not found")
			mapping_set_key {map, func}
		end

		::continue::
	end
end

mapping_iterate(mappings)
