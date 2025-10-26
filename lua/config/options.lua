local opt = vim.opt
local wo = vim.wo
local g = vim.g
g.mapleader = " "

-- configuration on tiny line plug in
-- vim.diagnostic.config({
--   virtual_text = true,
--   underline = true,
--   signs = false,
--   update_in_insert = true,
-- })

opt.hlsearch = true
opt.ruler = true
opt.termguicolors = true
wo.relativenumber = true
opt.cursorline = true
opt.number = true
opt.autoindent = true
opt.ignorecase = true
opt.title = true
opt.shell = "zsh"
opt.shiftwidth = 4
opt.wrap = true
opt.ruler = true
opt.hlsearch = true
opt.backup = false
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.encoding = "utf-8"

-- options for nvim-tree integration
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
