vim.keymap.set({ "n", "v" }, "<leader>cd", vim.diagnostic.open_float, {})
vim.keymap.set("n", "<Esc>", function()
  vim.cmd("noh")
end)

vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
    end,
  })
end)

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
-- Select all
vim.keymap.set("n", "<leader><C-a>", "gg<S-v>G", { desc = "Select all" })
