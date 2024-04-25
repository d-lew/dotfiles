return {
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
    event = "BufNew",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "tailwindcss" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    event = "BufNew",
    config = function()
      local lsp = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lsp.lua_ls.setup({
        capabilities = capabilities,
      })
      lsp.tailwindcss.setup({
        capabilities = capabilities,
      })
      lsp.tsserver.setup({
        capabilities = capabilities,
        filetypes = { "typescript", "javascript", "typescriptreact", "typescript.tsx" },
        cmd = { "typescript-language-server", "--stdio" },
      })

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", function()
        require("telescope")
        vim.lsp.buf.code_action()
      end, {})
    end,
  },
}
