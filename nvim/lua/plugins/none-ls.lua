return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        border = "rounded",
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          require("none-ls.diagnostics.eslint_d"),
          null_ls.builtins.diagnostics.codespell,
        },
      })
    end,
  },
  {
    {
      "nvimtools/none-ls.nvim",
      dependencies = {
        "nvimtools/none-ls-extras.nvim",
      },
    },
  },
}
