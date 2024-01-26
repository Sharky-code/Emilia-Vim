-- Set up snips with luasnip
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")

ls.setup({})
-- require("luasnip.loaders.from_lua").load({ paths = "~/.snippets" })
require("luasnip.loaders.from_vscode").lazy_load({
	paths = { "~/.local/share/nvim/site/pack/packer/start/friendly-snippets" },
})

-- Custom snippets setting up
ls.add_snippets(nil, {
	all = {
		s(
			"init",
			t({ "project(PROJECTNAME)", "add_executable(PROJECTNAME EXECUTABLE)", "set(CMAKE_CXX_STANDARD 20)" })
		),
		s(
			"pygame",
			t({
				"import pygame",
				"width, height = 255, 255",
				"background_color = (255, 255, 255)",
				"display = pygame.display.set_mode((width, height))",
				'caption = pygame.display.set_caption("hola")',
				"continue_game = True",
				"",
				"while continue_game:",
				"	display.fill(background_color)",
				"	for ev in pygame.event.get():",
				"		if ev.type == pygame.QUIT:",
				"			continue_game = False",
				"			break",
				"	pygame.display.update()",
			})
		),
	},
})
