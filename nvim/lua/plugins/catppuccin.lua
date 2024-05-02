return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      show_end_of_buffer = true,
    })

    vim.cmd.colorscheme("catppuccin")
    vim.api.nvim_set_hl(0, 'LineNr', { fg = "white"})
  end,
}
