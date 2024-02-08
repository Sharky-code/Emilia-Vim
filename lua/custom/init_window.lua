vim.g.split_tog = true

-- In actuality this would be put in a mappings file, but since this is still just a lightweight program, it is omitted and put here instead
vim.keymap.set('n', ';', ":lua require 'custom.render_window'.toggle() <CR>")

require("custom.window_temp"):mount()
require("custom.window_temp"):hide()
