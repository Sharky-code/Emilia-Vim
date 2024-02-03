return {
	'/goolord/alpha-nvim',
	config = function()
	local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	"=============================================================",
	"",
	"			  ████  █   █  ███",
	"			  ██    █ █    █",
	"			  ███   ███    █    █████",
	"			  ██    █   █    █",
	"			  ████  █   █    █",
	"",
	"					 █   █  ███  █   █",
	"					 █   █    █    █ █",
	"					 █ █    █    ███",
	"					 ███    █    █   █",
	"					  █   ███  █   █",
	"",
	"",
	"=============================================================",
}

require("alpha").setup(dashboard.config)

dashboard.section.buttons.val = {
	dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
	dashboard.button( "t", "  Open Telescope" , ":Telescope <CR>"),
	-- Gallery Option
	-- Choose Waifu Option
	dashboard.button( "q", "󰅚  Quit NVIM" , ":qa <CR>"),
}
dashboard.config.opts.noautocmd = true
end
}
