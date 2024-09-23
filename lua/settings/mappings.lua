-- Custom Mappings

local map = require("custom_plugins.map_customise.map_customise")
local mappings = map.mappings

for key, value in pairs(mappings) do
	vim.keymap.set("n", key, value)
end

