local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local status, plugin = pcall(require, "lazy") 
if not status then
	-- TODO: Create a err program that lets you choose between quitting neovim
	-- or proceeding without the plugin
else
	plugin.setup("plugins")
end
