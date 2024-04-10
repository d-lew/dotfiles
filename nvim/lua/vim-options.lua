-- tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- space as leader
vim.g.mapleader = " "

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8

-- no wrapping
vim.opt.wrap = false

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- keymaps
vim.keymap.set({ "n", "v" }, "<leader>cd", vim.diagnostic.open_float, {})
