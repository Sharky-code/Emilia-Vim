require "settings.options"
require "settings.autocommands"
require "settings.commands"
require "settings.mappings"

require "plugin_setup"
require "ui.winbar"
require "lsp.lsp_server"
require "lsp.lsp_settings"

vim.cmd [[ colorscheme tokyonight ]]
vim.cmd [[ TransparentEnable ]]
