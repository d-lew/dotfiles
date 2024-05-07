return {
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
    event = "VeryLazy",
    config = function()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          local capabilities = require("cmp_nvim_lsp").default_capabilities()
          require("lspconfig")[server_name].setup(capabilities)
        end,
        ["tsserver"] = function()
          local capabilities = require("cmp_nvim_lsp").default_capabilities()
          require("lspconfig")["tsserver"].setup({
            capabilities = capabilities,
            filetypes = { "typescript", "javascript", "typescriptreact", "typescript.tsx" },
            cmd = { "typescript-language-server", "--stdio" },
          })
        end,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    event = "VeryLazy",
    config = function()
      local border = {
        -- telescope style border
        { "╭", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╮", "FloatBorder" },
        { "│", "FloatBorder" },
        { "╯", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╰", "FloatBorder" },
        { "│", "FloatBorder" },
      }
      local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
      function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or border
        return orig_util_open_floating_preview(contents, syntax, opts, ...)
      end

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", function()
        require("telescope")
        vim.lsp.buf.code_action()
      end, {})
    end,
  },
}
