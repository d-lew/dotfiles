return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  lazy = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  keys = {
    {
      "<leader>n",
      ":Neotree filesystem reveal right toggle<CR>",
    },
  },
  config = function()
    require("neo-tree").setup({
      -- show filtered files
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
      -- disable git status in tree
      enable_git_status = false,
      -- close once a file has been selected
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    })
  end,
}
