return {
  "LunarVim/breadcrumbs.nvim",
  dependencies = "SmiteshP/nvim-navic",
  lazy = true,
  event = "VeryLazy",
  config = function()
    require("nvim-navic").setup({
      lsp = {
        auto_attach = true,
      },
    })

    require("breadcrumbs").setup()
  end,
}
