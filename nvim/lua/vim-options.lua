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

-- cursor
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.guicursor =
"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

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
vim.opt.listchars = { eol = "↲", space = "·", tab = "⇢ " }

vim.diagnostic.config({ virtual_text = true, severity_sort = true })
