vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
require("config.lazy")
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin-mocha"
vim.cmd("set number")
