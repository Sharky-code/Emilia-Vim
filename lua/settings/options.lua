local opts = {
	autochdir = true,

	-- Default true
	autoindent = true,
	
	-- Default true
	autoread = true,

	-- Writes on each change buffer command (eg. `:Next`)
	-- _autowrite_ is enabled but _autowriteall_ isn't because the latter 
	-- involves `:q`
	autowrite = true,

	-- Turns on bell for the specified action
	belloff = "esc,cursor,backspace",

	-- [BOM](https://en.wikipedia.org/wiki/Byte_order_mark)
	-- bomb = "yes",
	

	-- Default true
	buflisted = true,

	-- TODO: Research what buftype is for
	-- Default ""
	buftype = "",

	-- Indentation for C programs
	cindent = true,

	-- Check for more options for cindent in the 
	-- [manual](https://neovim.io/doc/user/options.html#'belloff')
	
	-- It does not affect MacOS, but when both is used, it ensures that 
	-- it's cross platform
	clipboard = "unnamed,unnamedplus",

	-- 0 - Removes the command line with the status bar
	cmdheight = 0,

	-- Creates a color column at a specified height, acts as a visual
	-- indicator of the width of text.
	-- Set cccording to traditional standards, therefore the number was
	-- chosen
	colorcolumn = "79",

	-- TODO: RES _commentstring_

	-- Options for how completion works
	-- Check out _completefunc_, _completeopt_, and _completeslash_
	complete = ".,w,b,u,t,kspell",

	-- TODO: RES _concealcursor_
	
	-- Confirm if you want to save the file when you quit
	confirm = true,

	-- Copies the structure of indentation when autoindenting
	copyindent = true,

	-- TODO: RES _cursorbind_ - may be useful in modding circumstances

	-- Highlights the cursor column
	-- TODO: It may be useful sometimes; create a keymap to toggle it
	cursorcolumn = false,

	-- Highlights the current line
	cursorline = true,

	-- TODO
	cursorlineopt = "both",

	-- TODO: RES _debug_ 
	
	-- TODO: RES _define_

	-- TODO 
	-- dictionary = ""
	
	-- Shows differences between files
	diff = false,

	-- TODO: RES _diffexpr_, _diffopt_
	
	-- TODO
	display = "lastline",

	-- Uses spaces to insert a tab
	expandtab = false,

	-- Removes the eob characters
	fillchars = "eob: ",

	-- Closes fold when your cursor is not in it
	-- TODO: Create a keybind for this
	foldclose = "",

	-- Disables the fold column
	foldcolumn = "0",

	-- The expression that is used for when foldmethod is expr.
	-- Evaluates every time to obtain its fold level
	foldexpr = "nvim_treesitter#foldexpr()",

	-- Folds with higher levels than set will be closed
	foldlevel = 7,

	-- Sets fold level when starting to edit another buffer in a window 
	foldlevelstart = 7,

	foldmethod = "expr",

	-- Specifies for which type of commands folds will open.
	-- I've disabled horizontal movements and undo from the default
	foldopen = "block,mark,percent,quickfix,search,tag",

	-- All matches in a line is substituded instead of one
	-- TODO: Should be an option to toggle it
	gdefault = true,

	-- Enables blinking 
	guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50," ..
	"a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor," ..
	"sm:block-blinkwait175-blinkoff150-blinkon175",

	hidden = true,

	-- When off, the highlights when searching will be turned off
	-- TODO: Add a keybind to toggle it 
	hlsearch = true,

	-- TODO: RES _icons_ - may be useful for modding window tabs
	
	-- Ignores case when searching
	-- TODO: Add a keybind to toggle it 
	ignorecase = false,

	-- Infers the case during keyboard completion
	infercase = true,

	-- Wrap long lines at a _breakat_ character rather than the last
	-- character that fits on screen
	linebreak = true,

	-- TODO: RES _indentkeys_
	
	-- When enter is typed in insert mode, sets the indent to next line
	-- to lisp standards
	-- lisp = true,

	nocompatible,

	number = true,

	numberwidth = 1,

	-- TODO Omni func
	
	relativenumber = true,
	
	scrolloff = 5,

	-- Number of spaces to use for each step of indent
	shiftwidth = 4,

	-- Shows a symbol for a line break
	-- TODO: Create an option to turn it off
	showbreak = ">", 

	-- Turns off showing command in the last line of the screen
	showcmd = false,

	-- When a bracket is inserted, briefly jump to the previous one
	showmatch = true,

	-- Disable showing what mode it is (as I will display it myself)
	showmode = false,

	-- Disable tabline
	showtabline = 0, 

	-- Don't show the sign column when there are no signs. Only show one
	-- row when there is 
	signcolumn = "auto:1",

	smartcase = true,

	smartindent = true,

	-- Turn off spell checking
	-- TODO: Create an option screen to toggle it 
	spell = false,

	swapfile = false,

	syntax = "on",

	tabstop = 4,

	termguicolors = true,

	title = true,

	titlestring = "Sharky",

	wrap = false

}


for k, v in pairs(opts) do
	vim.opt[k] = v
end

