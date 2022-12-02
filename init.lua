local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

--[[ context ]]
opt.number = true
opt.relativenumber = true
opt.numberwidth = 5
opt.scrolloff = 4

--[[ filetypes ]]
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

--[[ search ]]
opt.hlsearch = false

--[[ whitespace ]]
opt.expandtab = true   -- use spaces
opt.shiftwidth = 2     -- not a monster
opt.softtabstop = 2
opt.tabstop = 2

--[[ splits ]]
opt.splitright = true
opt.splitbelow = true

