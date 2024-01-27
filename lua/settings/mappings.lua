-- Which Key
require("which-key").setup()

require("which-key").register {
	["<F1>"] = { "<cmd> lua require('custom.runfile').main() <CR>", "Runfile" },
	["<F2>"] = { ":Telescope <CR>", "Runfile" },
	["<F3>"] = { ":Telescope file_browser <CR>", "Runfile" },
	["<F4>"] = { ":Telescope undo <CR>", "Runfile" },
}

-- FloatTerm (Doesn't work with whichkeys for some reason)
vim.cmd[[
    nnoremap   <silent>   <F7>    :FloatermNew<CR>
    tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
    nnoremap   <silent>   <F8>    :FloatermPrev<CR>
    tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
    nnoremap   <silent>   <F9>    :FloatermNext<CR>
    tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
    nnoremap   <silent>   <F12>   :FloatermToggle<CR>
    tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
]]

--[[
vim.cmd[[
inoremap <silent> <Esc> <C-\><C-n>:lua local popup = require("nui.popup")({ enter = true, focusable = true, border = { style = "single", }, position = "50%", size = "20%" }) popup:mount() vim.api.nvim_buf_set_lines(popup.bufnr, 0, 1, false, { "Reminder: Use the motherfucking js instead of esc" }) <CR>
]]

-- Codium
vim.keymap.set('i', '<c-h>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })

