-- space as leader
vim.g.mapleader = " "

-- tabs
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8

-- no wrapping
vim.opt.wrap = false

-- search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})
-- whitespace
vim.opt.list = true
vim.opt.listchars = { eol = "↲", space = "•" }

vim.diagnostic.config({ virtual_text = false, severity_sort = true })
