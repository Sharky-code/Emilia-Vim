-- Custom Mappings

local map = require("dependencies.mapping_map")
local mappings = map.mappings

for key, value in pairs(mappings) do
	vim.keymap.set("n", key, value)
end

