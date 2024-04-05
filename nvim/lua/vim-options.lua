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

-- no wrapping
vim.opt.wrap = false

-- search
vim.keymap.set("n", "<leader>h", ":nohl<CR>")
vim.opt.ignorecase = true
vim.opt.smartcase = true
